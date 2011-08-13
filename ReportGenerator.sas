/* 
	location of where all SAS files are located
	Need to be updated for the specific user

	NOTE: this file works under the assumption that you have created a file named: smallbreast_6_29_11 in 
		the libname SSRI declared below.  You have probably generated this file from the code called:
		'VariableGenerator.sas' also located in this directory.  It needs to be run first unless you have 
		already created the sas file from which you create the report.  

*/
libname SSRI 'H:\SSRI\';

/* nofmterr allows sas dataset requiring formats to be read without error if the formats can't be found. 
		*NOTE: when printing out the file, you may want to write out to text file without the formats.
			 : (don't read in the formats prior to writing to text file

	formdlim does not go onto a new page for each additional proc which is run.  Instead there are "****"
	between the procedure outputs.
*/
options nofmterr formdlim="*";

/* 
	Below we will generate an RTF summary of important characteristics of the data

*/
	/* 
		make an RTF file with output from data
		'startpage=NO' forces each new proc not to go onto a new page
		'FILE=blah': the name of the file to print out to - you need your own name
		feel free to add your ownprocs if you want to see more summary statistics
		
	*/

	/*	proc univariate data=smallbreast;
		var age bmi;
		histogram age;
		histogram bmi;
		run;
*/
	ODS RTF startpage=NO FILE='H:\SSRI\breast_6_29_11.rtf' BODYTITLE;
	*ODS RTF FILE='T:\Desktop\MTroester\SSRI\breast_6_29_11.rtf' BODYTITLE;
		title 'Statistics for age, bmi';
		proc means data=SSRI.smallbreast_6_29_11 mean median range min max N;
		var age bmi;
		run;

	title 'BMI category distribution';
	proc freq data=SSRI.smallbreast_6_29_11;
		tables bmicat;
		format bmicat bmi.;
	run;

	title 'SSRI usage';
	proc freq data=SSRI.smallbreast_6_29_11;
		tables AntiD;
		format AntiD ssri.;
	run;
	
	title 'Parity distribution';
	proc freq data=SSRI.smallbreast_6_29_11;
		tables parity;
		tables A50;
		format parity parity.;
	run;
	title 'Breasftfeeding habits';
	proc freq data=SSRI.smallbreast_6_29_11;
		tables breastfed;
		tables numbreastfed;
		format breastfed BF.;
	run;

	title 'Smoking and Alcohol Habits';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables smoker;
		tables alcohol;
		format alcohol alcohol. smoker smoker.;
	run;

	title 'Family history of breast cancer';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables D60;
	run;
	
	title 'Distribution of menarche';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables A10;
	run;

	title 'Distribution of menopause related factors';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables menopause;
		tables A20;
		tables A30;
		tables A44;
		format menopause MENOPAUSE.;
	run;
	title 'Average age by menopausal status';
	proc sort data=SSRI.smallbreast_6_29_11;
		by menopause;
	run;

	proc means data=SSRI.smallbreast_6_29_11;
		var age;
		by menopause;
		format menopause MENOPAUSE.;
	run;
	title 'Race/Ethnicity questions';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables race; /* variable created by MD*/ 
		tables D20;
		tables D30_1;
		tables D40;
		format race RACE.;
	run;

	title 'Exercise/Behavior changes';
	title 'Exercise behaviors: the time period between your first abnormal mammogram and receiving your final diagnosis.';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables E40;
		title 'How exercise patterns changed if they changed';
		tables E41;
		title 'Exercise behaviors: the time period between final diagnosis and now.';
		tables E50;
		title 'How exercise patterns changed if they changed';
		tables E51;
	run;
	ODS RTF CLOSE;  /* close the file */

	/* creating a PDF file*/
	ODS PDF FILE='H:\SSRI\breast_6_29_11.pdf' startpage=NO;;
	*ODS PDF FILE='T:\Desktop\MTroester\SSRI\breast_6_29_11.pdf';
		title 'Statistics for age, bmi';
		proc means data=SSRI.smallbreast_6_29_11 mean median range min max;
		var age bmi;
		run;

	title 'BMI category distribution';
	proc freq data=SSRI.smallbreast_6_29_11;
		tables bmicat;
		format bmicat bmi.;
	run;

	title 'SSRI usage';
	proc freq data=SSRI.smallbreast_6_29_11;
		tables AntiD;
		format AntiD ssri.;
	run;
	
	title 'Parity distribution';
	proc freq data=SSRI.smallbreast_6_29_11;
		tables parity;
		tables A50;
		format parity parity.;
	run;

	title 'Smoking and Alcohol Habits';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables smoker;
		tables alcohol;
		format alcohol alcohol. smoker smoker.;
	run;

	title 'Family history of breast cancer';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables D60;
	run;
	
	title 'Distribution of menarche';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables A10;
	run;

	title 'Distribution of menopause related factors';
		proc freq data=SSRI.smallbreast_6_29_11;
		tables A20;
		tables A30;
		tables A44;
	run;

	ODS PDF CLOSE;  /* close the file */
