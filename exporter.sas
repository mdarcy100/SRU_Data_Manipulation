/* this file will export full dataset into a tab delimited file */
libname SSRI 'H:\SSRI\';

options nofmterr formdlim="-";

/* write  smaller demographic tab delimited file text file out
	This only works if you have created the smaller file - 
	see "VariableGenerator.sas for details"
*/
	**OUTFILE= "T:\Desktop\MTroester\SSRI\ssri_6_29_11.txt";
	/* export just the smaller dataset */
PROC EXPORT DATA= SSRI.smallbreast_6_29_11     
			OUTFILE="H:\SSRI\breastsmall_6_29_11.txt" 
            DBMS=TAB LABEL REPLACE;
     PUTNAMES=YES;
RUN;

/* write  full questionnaire to tab delimited file text file out
	may not want all the formats in this
*/
PROC EXPORT DATA= SSRI.NEWBREAST 
            OUTFILE= "H:\SSRI\breastfull_6_29_11.txt"
            DBMS=TAB LABEL REPLACE;
     PUTNAMES=YES;
RUN;



	/*
data Temp;
	SET SSRI.breast_5_27_11;
	keep case_id sample_d sur_date;
	run;

	proc contents data=Temp;
run;
*/

proc freq data=Temp;
	tables B41_1;
	tables B41_2;
	tables B41_3;
	tables B41_4;
	tables B41_5;
	run;
*/

proc freq data=SSRI.newBreast;
	tables AntiD;
	run;

/* write to a tab delimited file with a new AntiD variable*/




PROC EXPORT DATA=Temp 
            OUTFILE= "H:\SSRI\sarah_report.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

PROC EXPORT DATA= SSRI.newBreast
            OUTFILE= "H:\SSRI\ssri_cancer.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

RUN;
PROC EXPORT DATA= SSRI.newBreast
            OUTFILE= "H:\SSRI\ssri_cancer.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

RUN;
SSRI.smallbreast_6_29_11 mean median range P25 P75 min max std;
	var age bmi;
	run;

	proc freq data=SSRI.newbreast;
	tables parity*A50/MISSING;
	tables A50;
	run;

	proc freq data=SSRI.newbreast;
		tables A44;
		tables A10;
		tables A20;
		tables A30;

	run;


	proc contents data=SSRI.newBreast;
	run;

	/*
data Temp;
	SET SSRI.breast_5_27_11;
	keep case_id sample_d sur_date;
	run;

	proc contents data=Temp;
run;
*/
	/* TE_75F = condition. 4 = depression */
	/*



proc freq data=Temp;
	tables B41_1;
	tables B41_2;
	tables B41_3;
	tables B41_4;
	tables B41_5;
	run;
*/

proc freq data=SSRI.newBreast;
	tables AntiD;
	run;

/* write to a tab delimited file with a new AntiD variable*/

/* write  smaller demographic tab delimited file text file out*/
	**OUTFILE= "T:\Desktop\MTroester\SSRI\ssri_6_29_11.txt";
PROC EXPORT DATA= SSRI.smallbreast_6_29_11     
			OUTFILE="H:\SSRI\ssri_6_29_11.txt" 
            DBMS=TAB LABEL REPLACE;
     PUTNAMES=YES;
RUN;

/* write  full questionnaire to tab delimited file text file out*/
PROC EXPORT DATA= SSRI.NEWBREAST 
            OUTFILE= "T:\Desktop\MTroester\SSRI\ssri_6_29_11.txt" 
            DBMS=TAB LABEL REPLACE;
     PUTNAMES=YES;
RUN;


PROC EXPORT DATA=Temp 
            OUTFILE= "H:\SSRI\sarah_report.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

PROC EXPORT DATA= SSRI.newBreast
            OUTFILE= "H:\SSRI\ssri_cancer.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

RUN;
reast
            OUTFILE= "H:\SSRI\ssri_cancer.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

RUN;
N;

RUN;
  DBMS=EXCEL5 REPLACE;
RUN;

PROC EXPORT DATA= SSRI.newBreast
            OUTFILE= "H:\SSRI\ssri_cancer.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

RUN;
reast
            OUTFILE= "H:\SSRI\ssri_cancer.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

RUN;
ence in time between the two dates
			NOTE: this is slightly approximate since we do not know the day of the surgery 
	*/
		birthmonth=scan(DOB_STR,1);
		if(birthmonth eq 'January') then birthnum=1;
		else if(birthmonth eq 'February') then birthnum=2;
		else if(birthmonth eq 'March') then birthnum=3;
		else if(birthmo
       DBMS=EXCEL5 REPLACE;
RUN;

RUN;
N;

RUN;
  DBMS=EXCEL5 REPLACE;
RUN;

PROC EXPORT DATA= SSRI.newBreast
            OUTFILE= "H:\SSRI\ssri_cancer.xls" 
            DBMS=EXCEL5 REPLACE;
RUN;

RUN;
reast
            OUTFILE= "H:\SSRI\ssri_cancer.xls" 
            DBMS=EXCEL5 REPLACE;
R