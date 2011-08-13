libname SSRI 'H:\SSRI\';

/* make sure that the formats(BreastCancerFormats) have been run if you want to display them later on*/
/* 
	TODO:
	create report with:
	1) DONE: smoking: ever never current
	2) DONE alcohol: never light moderate high
	3) DONE menarche: age
	4) menopausal status*****
	5) DONE family history
	6) DONE age (average, range)- do histogram
	7) DONE bmi: < 25, 25-30, > 30 (N, %) 
		- need to create category variable
	8)DONE parity: < 1, 1-3, 4+
		- need to create category variable
	9) DONE get breastfeeding
	10) race if it is there

		- first find variable names




*/

options nofmterr formdlim="-";

data SSRI.newBreast;
	*SET SSRI.breast_5_27_11;
	SET SSRI.breast_6_29_11;

	/*creating AntiDepressant variable */
	if B40 eq 1 then do;
		if (B41_1 eq 4 | B41_2 eq 4 | B41_3 eq 4 | B41_4 eq 4 | B41_5 eq 4) then AntiD = 1;
		else AntiD = 0;
		end;
	else if B40 eq 0 then AntiD = 0;
	else AntiD = .;

	/*1)BMI:
		E120 = height feet, E121 = height inches, E130 = weight in pounds
		need to calculate BMI: 
		new variable = bmi
		BMI = ( Weight in Pounds / ( Height in inches x Height in inches ) ) x 703
	*/
	if(E120 eq 8 or E120 eq 9) the height = .; /* refused/don't know*/
	else if(E121 ge 12) then height = .;
	else height = E120*12 + E121;

	if(E130 ge 888) then bmi = .; /* refused/don't know */
	else bmi=(E130/(height*height))*703;

	if(bmi eq .) then bmicat = .;
	else if(bmi < 25) then bmicat = 0; /* normal/underweight*/
	else if(bmi ge 25 and bmi lt 30) then bmicat = 1; /*overweight */
	else  bmicat = 2;  /* obese */
	/*
	2) SMOKING status: 
		E10 = ever smoked: 0 = never, 1 = yes, 
		E12 = current smoker: 0 = no, 1 = yes

		new variable:
		smoker: 0 = never, 1 = past, 2 = current
	*/

	if(E10 eq 0) then smoker = 0; /* never smoker*/
	else if(E10 eq 1 and E12 eq 0) then smoker = 1; /* past smoker */
	else if(E10 eq 1 and E12 eq 1) then smoker = 2; /* current smoker */
	else smoker = .;

	/*
	3)	alcohol consumption:
		E20 = have you ever drank;
			0.	NO (GO TO EXERCISE_INTRO)
			1.	YES (GO TO E21)
			8.	REFUSED (GO TO EXERCISE_INTRO)(code as missing)
			9.	DON’T KNOW (GO TO EXERCISE_INTRO) (code as missing)

		E21 = do you currently drink alcohol;
			1.	CURRENTLY DRINK (GO TO E23)
			2.	STOPPED ENTIRELY (GO TO E22)
			8.	REFUSED (GO TO E23)
			9.	DON’T KNOW (GO TO E23)

		E23 = how often drink in past year
		E23. Thinking about the past year, how often did you drink? Would you say….
			1.	Never
			2.	Less than once a month (GO TO EXERCISE_INTRO)(light drinker)
			3.	At least once a month but not every week (GO TO EXERCISE_INTRO) (light drinker)
			4.	At least once a week but not every day (GO TO E24)
			5.	At least once a day (GO TO E24)
			8.	REFUSED (GO TO EXERCISE_INTRO) (code as missing)
			9.	DON’T KNOW (GO TO EXERCISE_INTRO)(code as missing)

		E24 = how many in one week; 
			<=7/week = light drinker
			>7 = heave drinker	

		new variable = alcohol
	*/
	if(E20 eq 0) then alcohol = 0; /* never drank; doesn't drink*/
	if(E21 eq 2) then alcohol = 0; /* past drinker; doesn't drink*/
	if(E23 eq 1) then alcohol = 0; /* hasn't drank in the last year*/
	if(E23 eq 2 or E23 eq 3) then alcohol = 1; /* less than month, at least once a month = light drinker */
	if((E23 eq 4 or E23 eq 5) and E24 le 14) then alcohol = 2; /* moderate drinker (1-14 drinks/week) */
	if((E23 eq 4 or E23 eq 5) and E24 gt 14) then alcohol = 3; /* heave drinker (>14 drinks/week)*/


	/*4)  
			calculate age from DOB_STR
		 	new variable = age
			this was a little tricky since we needed to 1) parse the character representation of
			the DOB_STR variable convert it to a date 2) convert the character representation of 
			surgery date (SUR_DATE) and convert it to a date and 
			3) calculate age by taking the difference in time between the two dates
			NOTE: this is slightly approximate since we do not know the day of the surgery 
	*/
		birthmonth=scan(DOB_STR,1);
		if(birthmonth eq 'January') then birthnum=1;
		else if(birthmonth eq 'February') then birthnum=2;
		else if(birthmonth eq 'March') then birthnum=3;
		else if(birthmonth eq 'April') then birthnum=4;
		else if(birthmonth eq 'May') then birthnum=5;
		else if(birthmonth eq 'June') then birthnum=6;
		else if(birthmonth eq 'July') then birthnum=7;
		else if(birthmonth eq 'August') then birthnum=8;
		else if(birthmonth eq 'September') then birthnum=9;
		else if(birthmonth eq 'October') then birthnum=10;
		else if(birthmonth eq 'November') then birthnum=11;
		else if(birthmonth eq 'December') then birthnum=12;
		else birthnum=.;

		birthyear=scan(DOB_STR,-1);
		birthday=scan(DOB_STR,2);
		suryear=scan(SUR_DATE,-1);
		surmonth=scan(SUR_DATE,1);
		surday=1;

		newbirthyear=input(birthyear, 4.);
		newsuryear=input(suryear,4.);
		newsurmonth=input(surmonth,2.);
		newbirthday=input(birthday,2.);

		birthdate=mdy(birthnum,newbirthday,newbirthyear);
		surdate=mdy(newsurmonth,surday,newsuryear);

		age = INT((surdate-birthdate)/365.25);


		age=INT(INTCK('MONTH', birthdate, surdate)/12);
		IF MONTH(birthdate) = MONTH(surdate)
			THEN age = age -(DAY(birthdate)>DAY(surdate));



	/* 5) famhistory_breast: for now D60 is sufficient to capture family history.  This may need to be modified in the
							future to captureother aspects of family cancer history

			D60.	Thinking of any grandparents, parents, aunts, uncles, nieces, nephews, siblings or children, have any of these relatives ever had breast cancer?
				0.	NO (GO TO D70)
				1.	YES (GO TO D61)
				8.	REFUSED (GO TO D70) (code as missing)
				9.	DON’T KNOW (GO TO D70) (code as missing)

	*/

	/*     
		6)  parity: code as 0, 1-3, >=4
				new variable = parity.
			***** NOTE: spoke to Melissa annd she said that the important aspect of parity is making it 
					to 32 weeks of pregnancy



			A50. How many times have you been pregnant?
				INTERVIEWER NOTE: PREGNANCY DOES NOT HAVE TO BE CONFIRMED BY A DOCTOR	
				ENTER # OF TIMES PREGNANT
				RANGE=0 TO 21 (SOFT CHECK IF OVER 10) (0, GO TO A80; 1, GO TO A51; 2-20, GO TO A52; 21, GO TO A60)
				INTERVIEWER NOTE:  IF R INDICATES THAT SHE IS CURRENTLY PREGNANT, ENTER 21)
				88.	REFUSED (GO TO A80)
				99.	DON’T KNOW (GO TO A80)

			A51. 	Did this pregnancy last at least 32 weeks? 
				0.	NO (GO TO A54)
				1.	YES (GO TO A54)
				8.	REFUSED (GO TO A54)
				9.	DON’T KNOW (GO TO A54)
	
				A52.	How many of your pregnancies lasted at least 32 weeks?
					ENTER # (RANGE=0 TO 20) (IF 0, SKIP A53 AND GO TO A54)
					REF (GO TO A53)
					DK  (GO TO A53)


	*/
			if A50 = 0 then parity = 0; *never pregnant;
			else if A50 ge 80 then parity = .; *refused to answer or didn't know;
			else if A51 = 0 then parity = 0; * pregnant 1 time, but didn't make it to 32 weeks;
			else if A51 = 1 then parity = 1; * pregnant 1 time and it lasted 32 weeks;
			else if A51 ge 8 then parity = 0; * not sure if the 1 pregnancy lasted 32 weeks;
			else if A52 eq 0 then parity = 0; * none of the >= 2 pregnancies lasted 32 weeks;
			else if A52 ge 1 and A52 le 3 then parity = 1; * 1-3 of at least 2 pregnancies lasted 32 weeks;
			else if A52 ge 4 and A52 le 20 then parity = 2; * >4 pregnancies lasted at least 32 weeks;
			else parity = .; * in theory maybe this should be coded as 0 since we know they were pregnant;  

	/* 
			7) menarche: A10 - this should be sufficient and we probably don't need to create a new variable
				0.	NEVER MENSTRUATED (GO TO A30)
				9.	9 OR YOUNGER
				10.	10
				11.	11
				12.	12
				13.	13
				14.	14
				15.	15
				16.	16
				17.	17 OR OLDER
				88.	REFUSED (GO TO A20) (code as missing)
				99.	DON’T KNOW (GO TO A20) (code as missing)

	/* 8) menopausal status: was not sure which variables we should use. For now all three capture
			menopausal status

		A20.	Are your periods now regular, irregular or have they stopped altogether?
			1.	REGULAR (GO TO A40)
			2.	IRREGULAR (GO TO A41)
			3.	STOPPED ALTOGETHER (GO TO A30)
			8.	REFUSED (GO TO A40)
			9.	DON’T KNOW (GO TO A40)


		A30.	Have you had a hysterectomy?
			0.	NO (IF A10=0, SKIP TO B_INTRO; OTHERWISE, GO TO A34)
			1.	YES (GO TO A31)
			8. 	REFUSED (GO TO A40)
			9. 	DON’T KNOW (GO TO A40)

		A 44.	SKIP AND GO TO A50 IF A30=1 OR A34=1
			Are you currently
			1.	pre-menopausal (GO TO A45)
			2.	peri-menopausal, or (GO TO A45)
			3.	post-menopausal (GO TO A50)
			8.	REFUSED (GO TO A45)
			9.	DON’T KNOW (GO TO A45)
	*/

	/* 
		Breastfeeding (it seems breatfeeding only counts if pregnant >= weeks; why is this?)
			A70.	IF A51=YES OR IF A52>0 OR IF A61=2 AND A64=YES, ASK
			Did you breastfeed?
				0.	NO (GO TO A80)
				1.	YES (GO TO A71)
				8.	REFUSED (GO TO A80)
				9.	DON’T KNOW (GO TO A80)

			A71.	IF A52>1 OR IF A61>2 AND A64=YES, ASK:  (IF A50=1 OR IF A52=1 OR IF A61<3 SKIP AND GO TO A72)
				How many children did you breast feed?
				RANGE=1-20, HARD CHECK IF MORE THAN A52 OR MORE THAN A61 LESS 1
				88.	REFUSED (GO TO A80)
				99.	DON’T KNOW (GO TO A72)

			new variables = breastfed (yes/no) and numbreastfed (a number 1-N)
	*/
				if(parity eq 0) then breastfed = 0; * these people will not have answered question A70;
				else if A70 eq 0 then breastfed = 0; * people who could have breastfed but didn't;
				else if A70 eq 1 then breastfed = 1; * pregnant >= 1 times for >= 32 weeks and BF;
				else if A70 ge 8 then breastfed = .; * don't know or refused to answer; 
				else breastfed = .;  

				if breastfed = 0 then numbreastfed = 0; * ; 
				else if A71 gt 0 and A71 le 20 then numbreastfed = A71; *  number of times BF; 
				else if A71 ge 88 then numbreastfed = .; * refusedor didn't know; 
				else numbreastfed = .;


		/* RACE/Ethnicity - there are a lot of these.  won't make new variables yet
			D20.	Do you consider yourself to be of Latina origin?
			0.	NO
			1.	YES
			8.	REFUSED
			9.	DON’T KNOW

	D30. Which one or more of the following describes your racial background?
		1.	White
		2.	African American/Black
		3.	Asian
			4.	Native Hawaiian or other Pacific Islander
		5.	American Indian or Alaskan Native
		6.	OTHER (GO TO D31)
		8.	REFUSED
		9.	DON’T KNOW

		D31.	SPECIFY OTHER RACE
		OPEN TEXT (50 CHARACTERS)

		D40. Are you of Ashkenazi Jewish, Dutch, Icelandic, or French Canadian descent?
		0.	NO
		1.	YES
		8.	REFUSED
		9.	DON’T KNOW

D41.	Which of those are you? (CHOOSE ALL THAT APPLY)
1.	ASHKENAZI JEWISH
2.	DUTCH
3.	ICELANDIC
4.	FRENCH CANADIAN
8.	REFUSED
9.	DON’T KNOW


		*/
	run;

	proc print data=SSRI.smallbreast_6_29_11;
	where bmi>100;
	var case_id E120 E121 E130 bmi;
	run;

	/* this is a smaller, much more manageable dataset*/
	data SSRI.smallbreast_6_29_11;
		set SSRI.newbreast;
		keep case_id E120 E121 E130 height bmi bmicat parity A50 A52 A10 A20 A30 A44 D60 E20 E21 E23 E24 alcohol E10 E12 D60 DOB_STR birthyear age SUR_DATE SUR_STR suryear smoker AntiD breastfed numbreastfed A71 A70 D20 D30 D40 D31;		
	run;
