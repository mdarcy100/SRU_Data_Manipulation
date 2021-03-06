PROC FORMAT;
/* Monica D'Arcy added the first 6 formats for additions she added to the dataset */
VALUE BF
	0='Never breastfed (for preg >= 32)'
	1='Did breastfeed'
	.='Unknown breastfeeding status';
VALUE RACE
	0='White/Non-Hispanic'
	1='Black/Non-Hispanic'
	2='Hispanic'
	3='Other'
	.='Unknown race';
VALUE MENOPAUSE
	0='Pre-menopausal'
	1='Peri-menopausal'
	2='Post-menopausal'
	3='Unknown Menopausal status';
VALUE smoker
	0='Never smoked'
	1='Past Smoker'
	2='Current Smoker';

VALUE alcohol
	0='Never/past drinker'
	1='Light drinker'
	2='Moderate drinker (1-14 drinks/wk)'
	3='Heavy drinker (>14 drinks/wk)';

VALUE parity
	0='Never been pregnant (>=32 weeks)'
	1='pregnant 1-3 times (>=32 weeks)'
	2='pregnant >3 times (>=32 weeks)'
	.='Unknown parity status';

VALUE bmi
	0='Normal/underweight (<25 BMI)'
	1='Overweight (25-30 BMI)'
	2='Obese (>= 30 BMI)'
	.='Unknown BMI status.';

VALUE ssri
	0='NO antidepressants'
	1='YES antidepressants';

VALUE TE_1F
  1='Sunday'
  2='Monday'
  3='Tuesday'
  4='Wednesday'
  5='Thursday'
  6='Friday'
  7='Saturday'
;

VALUE TE_2F
  1='no preference'
  2='appointment for date and time'
  3='preference for a period'
  4='preference for days of the week'
;

VALUE TE_3F
  1='Questionnaire/Response'
  2='No answer'
  3='busy'
  4='Appointment'
  5='Non-Response'
  6='Answering service'
  7='Disconnected'
  8='No contact (rest)'
;

VALUE TE_4F
  1='AMCB ANSWERING MACHINE CALL BACK'
  2='ANM ANSWERING MACHINE'
  3='BAM BUSINESS ANSWERING MACHINE'
  4='BZCB BUSY SIGNAL CALL BACK'
  5='BZY BUSY SIGNAL'
  6='COMX COMPLETE FROM RESPONDENT X'
  7='COMY COMPLETE FROM RESPONDENT Y'
  8='DECX DECEASED RESPONDENT X'
  9='DECY DECEASED RESPONDENT Y'
  10='FAX FAX TONE'
  11='FBCB FAST BUSY CALL BACK'
  12='FBZ FAST BUSY SIGNAL'
  13='FXCB FAX TONE CALL BACK'
  14='LANX LANGUAGE ISSUE - RESPONDENT X'
  15='LANY LANGUAGE ISSUE - RESPONDENT Y'
  16='MEDX MEDICAL CONDITION - RESPONDENT X'
  17='MEDY MEDICAL CONDITION - RESPONDENT Y'
  18='NOA NO ANSWER'
  19='NOCB NO ANSWER CALL BACK'
  20="R1DK FIRST REFUSAL - DON'T KNOW HOUSEHOLD STATUS"
  21='R1GK FIRST REFUSAL BY GATEKEEPER'
  22='R1H FIRST REFUSAL BY HOUSEHOLD'
  23='R1X FIRST REFUSAL BY RESPONDENT X'
  24='R1Y FIRST REFUSAL BY RESPONDENT Y'
  25='SCB NO CALL MADE - RESCHEDULE CALL BACK'
  26='SUSX SUSPENDED INTERVIEW - RESPONDENT X'
  27='SUSXY SUSPENDED INTERVIEW - RESPONDENT X & Y'
  28='SUSY SUSPENDED INTERVIEW - RESPONDENT Y'
  29='TEM TEMPORARILY DISCONNECTED'
  30="UNDK UNAVAILABLE - DON'T KNOW HOUSEHOLD STATUS"
  31='UNGK GATEKEEPER SAYS RESPONDENT UNAVAILABLE'
  32='UNH UNAVAILABLE HOUSEHOLD'
  33='UNX RESPONDENT X UNAVAILABLE'
  34='UNY RESPONDENT Y UNAVAILABLE'
  35='UPD UPDATE PRIMARY PHONE NUMBER'
  36='ALT UPDATE ALTERNATE PHONE NUMBER'
  50='BNR BUSINESS / NON-RESIDENCE'
  51='CEL CELL PHONE'
  52='CHG NUMBER HAS BEEN CHANGED'
  53='DECX RESPONDENT X DECEASED'
  54='DECY RESPONDENT Y DECEASED'
  55='FX2 MAXIMUM ATTEMPTS - FAX MACHINE'
  56='INS INSTITUTION / BARRACKS'
  57='LANH LANGUAGE ISSUE - HOUSEHOLD'
  58='LOSX UNAVAILABLE LENGTH OF STUDY - RESPONDENT X'
  59='LOSY UNAVAILABLE LENGTH OF STUDY - RESPONDENT Y'
  60='NIS NOT IN SERVICE'
  61='NPR NOT PRIMARY RESIDENCE'
  62='PRE1 INELIGIBLE - PREREQ1_S'
  63='PRE2 INELIGIBLE - PREREQ2_S'
  64='PRE3 INELIGIBLE - PREREQ3_S'
  65='PRE4 INELIGIBLE - PREREQ4_S'
  66='PRE5 INELIGIBLE - PREREQ5_S'
  67='PST1X RESPONDENT X INELIGIBLE - POSTREQ1_S'
  68='PST1Y RESPONDENT Y INELIGIBLE - POSTREQ1_S'
  69='PST2X RESPONDENT X INELIGIBLE - POSTREQ2_S'
  70='PST2Y RESPONDENT Y INELIGIBLE - POSTREQ2_S'
  71='PST3X RESPONDENT X INELIGIBLE - POSTREQ3_S'
  72='PST3Y RESPONDENT Y INELIGIBLE - POSTREQ3_S'
  73='PST4X RESPONDENT X INELIGIBLE - POSTREQ4_S'
  74='PST4Y RESPONDENT Y INELIGIBLE - POSTREQ4_S'
  75='PST5X RESPONDENT X INELIGIBLE - POSTREQ5_S'
  76='PST5Y RESPONDENT Y INELIGIBLE - POSTREQ5_S'
  77='SPN NEEDS SPANISH INTERVIEW'
  90='NOC NO CONTACT - MAXIMUM CALLS'
  91="NSDK NO SCREENER - DON'T KNOW ELIGIBILITY STATUS"
  92='NSH NO SCREENER - HOUSEHOLD'
  93="RFDK FINAL REFUSAL - DON'T KNOW ELIGIBILITY STATUS"
  94='RFH FINAL REFUSAL BY HOUSEHOLD'
  95='FNNP FINAL NNP - TRACKING UNSUCCESSFUL'
  100='LANX LANGUAGE ISSUE - RESPONDENT X'
  101='LANY LANGUAGE ISSUE - RESPONDENT Y'
  102='MEDX MEDICAL CONDITION - RESPONDENT X'
  103='MEDY MEDICAL CONDITION - RESPONDENT Y'
  104='NQE NO QUESTIONNAIRE - ELIGIBLE RESPONDENT'
  105='RFGK FINAL REFUSAL BY GATEKEEPER'
  106='RFX FINAL REFUSAL BY RESPONDENT X'
  107='RFY FINAL REFUSAL BY RESPONDENT Y'
  108='BRK BREAK-OFF (FINAL SUSPEND)'
  110='REV1 SUPERVISOR REVIEW - REVREAS1_S'
  111='REV2 SUPERVISOR REVIEW - REVREAS2_S'
  112='REV3 SUPERVISOR REVIEW - REVREAS3_S'
  113='REV4 SUPERVISOR REVIEW - REVREAS4_S'
  114='REV5 SUPERVISOR REVIEW - REVREAS5_S'
  115='REV6 SUPERVISOR REVIEW - REVREAS6_S'
  116='REV7 SUPERVISOR REVIEW - REVREAS7_S'
  117='REV8 SUPERVISOR REVIEW - REVREAS8_S'
  118='REV9 SUPERVISOR REVIEW - REVREAS9_S'
  119='RMV REMOVE FROM CALLING'
  120='COMPLETE COMPLETE'
  121='PARTIAL PARTIAL'
;

VALUE TE_5F
  0='NO'
  1='YES'
;

VALUE TE_6F
  0='NO'
  1='YES'
;

VALUE TE_7F
  0='NO'
  1='YES'
  8='REFUSED'
  9="DON'T KNOW"
;

VALUE TE_8F
  1='NONE'
  2='UNK'
  3='HH'
  4='GK'
  5='RX'
  6='RY'
  7='RXY'
;

VALUE TE_9F
  1='EST'
  2='CST'
  3='MST'
  4='PST'
;

VALUE TE_10F
  1='OK'
;

VALUE TE_11F
  1='COMPLETE'
  9='SUSPEND'
  10='CONSENT'
  14='ALL_INFO_VER'
  15='R_NAME_VER'
  19='HOUSEHOLD'
  20='IN_CALLING'
  30='SUPV_REVIEW'
  35='REMOVED'
  40='NO_CONTACT'
  41='NO_SCREEN_UNK'
  42='NO_SCREEN_HH'
  50='INEL_PHN_NUM'
  51='INEL_NON_RES'
  52='INEL_LANGUAGE'
  53='INEL_PRE_ELIG'
  54='INEL_PST_ELIG'
  60='NO_SURV_UNABLE'
  61='NO_SURV_NOTCOM'
;

VALUE TE_12F
  0='UNKNOWN'
  1='INELIG_NONRES'
  2='INELIG_DATA'
  3='PRE_ELIGIBLE'
  4='ELIGIBLE'
;

VALUE TE_13F
  1='NO_REFUSALS'
  2='IN_CONVERSION'
  3='FINAL_UNK_RF'
  4='FINAL_HH_RF'
  5='FINAL_GK_RF'
  6='FINAL_X_RF'
  7='FINAL_Y_RF'
;

VALUE TE_14F
  1='NOA (NO ANSWER)'
  2='BZY (BUSY SIGNAL)'
  3='FAX (FAX TONE)'
  4='FBZ (FAST BUSY SIGNAL)'
;

VALUE TE_15F
  1='ANM (ANSWERING MACHINE)'
;

VALUE TE_16F
  1='NOCB (NO ANSWER CALL BACK)'
  2='BZCB (BUSY SIGNAL CALL BACK)'
  3='FXCB (FAX TONE CALL BACK)'
  4='FBCB (FAST BUSY SIGNAL CALL BACK)'
  5='TEM  (TEMPORARILY DISCONNECTED)'
  6='AMCB (ANSWERING MACHINE CB)'
  7='SCB  (NO CALL MADE - RESCHEDULE CB) '
  8='UNDK (UNKNOWN UNAVAILABLE)'
  9='UNGK (GK SAYS RESP X UNAVAILABLE)'
  10='UNX  (RESP X UNAVAILABLE)'
  11='SUSX (SUSPENDED INTERVIEW - RESP X) '
  12='R1DK (1ST REFUSAL BY UNKNOWN)'
  13='R1GK (1ST REFUSAL BY GK)'
  14='R1X  (1ST REFUSAL BY RESP X)  '
  15='UPD  (UPDATE PRIMARY PHONE #)'
  16='ALT  (UPDATE ALTERNATE PHONE #)'
;

VALUE TE_17F
  1='LANX  (LANGUAGE ISSUE - RESP X)'
  2='LOSX    (LENGTH OF STUDY - RESP X)'
  3='MEDX   (MEDICAL CONDITION - RESP X)'
  4='DECX  (DECEASED - RESP X)'
;

VALUE TE_18F
  1='RFDK (FINAL REFUSAL BY UNKNOWN)'
  2='RFGK (FINAL REFUSAL BY GK)'
  3='RFX (FINAL REFUSAL BY RESP X)'
;

VALUE TE_19F
  1='REV1 (SUP REVIEW -  REVREAS1_S)'
  2='REV2 (SUP REVIEW -  REVREAS2_S)'
  3='REV3 (SUP REVIEW -  REVREAS3_S)'
  4='REV4 (SUP REVIEW -  REVREAS4_S)'
  5='REV5 (SUP REVIEW -  REVREAS5_S)'
  6='REV6'
  7='REV7'
  8='REV8'
  9='REV9'
;

VALUE TE_20F
  1='NOC (NO CONTACT - MAX CALLS)'
  2='NSDK (NO SCREENER - DK ELIG STATUS)'
  3='NQE (NO Q NAIRE - ELIGIBLE RESP)'
  4='BRK (BREAK-OFF - FINAL SUSPEND) '
  5='RMV (REMOVE FROM CALLING)'
  6='FNNP (FINAL NNP - TRACKING UNSUCCESSFUL)'
;

VALUE TE_21F
  1='RESPONDENT / GATEKEEPER'
  2='SRU SEARCH'
  3='CLIENT TRACKING'
  4='OTHER OUTSIDE TRACKING'
  5='ORIGINAL PHONE NUMBER (FOR SUPERVISOR USE ONLY!!)'
;

VALUE TE_22F
  1='PERSON UNKNOWN AT THIS NUMBER'
  2='PERSON NO LONGER AT THIS NUMBER'
  3='NUMBER DOES NOT ACCEPT INCOMING CALLS'
  4='NUMBER CANNOT BE COMPLETED AS DIALED'
  5='NUMBER CHANGED TO UNPUBLISHED NUMBER'
  6='NUMBER NOT IN SERVICE'
  7='OTHER'
;

VALUE TE_23F
  1='PARTICIPANT ON PHONE OR COMING TO PHONE'
  2='PARTICIPANT NOT AVAILABLE'
  3='PARTICIPANT NO LONGER AT THIS NUMBER'
  4='NO ONE BY THAT NAME KNOWN'
  5='HANG UP OR PARTICIPANT REFUSES TO COME TO PHONE'
;

VALUE TE_24F
  1='CONTINUE'
  2='HOUSEHOLD UNAVAILABLE'
  3='HOUSEHOLD REFUSAL'
;

VALUE TE_25F
  0='NO'
  1='YES'
  2='UNKNOWN UNAVAILABLE'
  3='UNKNOWN REFUSAL'
;

VALUE TE_26F
  0='NO'
  1='YES'
  2='HANG UP BEFORE NUMBER VERIFICATION'
;

VALUE TE_27F
  1='SAME PERSON ANSWERED'
  2='NO ONE ANSWERED (NO ANSWER, ANSWERING MACHINE, BUSY, ETC.)'
;

VALUE TE_28F
  1='THIS IS A SWITCHED NUMBER'
;

VALUE TE_29F
  0="NO / DON'T KNOW / REFUSED"
  1='YES'
;

VALUE TE_30F
  0='NO'
  1='YES'
  2='REFUSES TO GIVE PARTICIPANT INFORMATION'
;

VALUE TE_31F
  0='NO'
  1='YES (ALL 3 FIELDS CORRECT)'
;

VALUE TE_32F
  0='NO (MONTH OR YEAR IS WRONG)'
  1='YES (MONTH AND YEAR ARE BOTH CORRECT)'
  2='R CLAIMS NOT TO HAVE HAD SURGERY'
;

VALUE TE_33F
  1='CONTINUE'
;

VALUE TE_34F
  1='MEETS REQUIREMENT / CONTINUE'
  2='NOT ELIGIBLE'
  3='HOUSEHOLD UNAVAILABLE'
  4='HOUSEHOLD REFUSAL'
;

VALUE TE_35F
  1='ENTER NAME / CONTINUE'
  2='HOUSEHOLD REFUSAL'
;

VALUE TE_36F
  1='ADULT IS ALREADY ON PHONE / CONTINUE'
  2='ADULT JUST CAME TO PHONE / CONTINUE'
  3='ADULT UNAVAILABLE'
  4='HOUSEHOLD REFUSAL'
;

VALUE TE_37F
  1='CONTINUE'
  2='UNKNOWN UNAVAILABLE'
  3='UNKNOWN REFUSAL'
;

VALUE TE_38F
  1='PARTICIPANT IS AVAILABLE / WAIT FOR PERSON TO COME TO LINE'
  2='PARTICIPANT IS NOT AVAILABLE / NOT HOME'
  3='PARTICIPANT NO LONGER LIVES HERE'
  4='UNKNOWN REFUSAL'
;

VALUE TE_39F
  1='MEETS REQUIREMENT / CONTINUE'
  2='NOT ELIGIBLE'
  3='SELECTED HOUSEHOLD MEMBER UNAVAILABLE'
  4='HOUSEHOLD REFUSAL'
;

VALUE TE_40F
  1='CONTINUE'
  2='RESPONDENT UNAVAILABLE'
  3='RESPONDENT REFUSAL'
;

VALUE TE_41F
  1='CONTINUE'
  2='RESPONDENT UNAVAILABLE'
  3='RESPONDENT REFUSAL'
;

VALUE TE_42F
  1='YES / R ON PHONE OR COMING TO PHONE / CONTINUE'
  2='GATEKEEPER SAYS RESPONDENT UNAVAILABLE'
  3='RESPONDENT UNAVAILABLE'
  4='GATEKEEPER REFUSAL'
  5='RESPONDENT REFUSAL'
;

VALUE TE_43F
  1='NO ANSWER, BUSY, FAX, FAST BUSY'
  2='ANSWERING MACHINE'
  3='NOT IN SERVICE'
  4='TO SET A CALL BACK FOR ANSWERING MACHINE, NO ANSWER, BUSY, FAX, FAST BUSY, TEMPORARILY DISCONNECTED'
;

VALUE TE_44F
  1='ANM'
  2='AMCB (TO SET A CALL BACK)'
;

VALUE TE_45F
  1='WEAK'
  2='MEDIUM'
  3='STRONG'
  4="PERSON SAID 'DON'T EVER CALL AGAIN', THREATENED TO REPORT US, OR USED PROFANITY"
;

VALUE TE_46F
  1='TEEN OR YOUNG ADULT'
  2='MIDDLE-AGE'
  3='ELDERLY'
  4="DON'T KNOW"
;

VALUE TE_47F
  1='MALE'
  2='FEMALE'
  3="DON'T KNOW"
;

VALUE TE_48F
  1='WHITE'
  2='BLACK'
  3='AMERICAN INDIAN'
  4='ASIAN OR PACIFIC ISLANDER'
  5='OTHER'
  6="DON'T KNOW"
;

VALUE TE_49F
  1='PLEASANT'
  2='SOMEWHAT UNPLEASANT'
  3='VERY UNPLEASANT'
  4='HUNG UP WITHOUT SPEAKING'
;

VALUE TE_50F
  1='NO REASON GIVEN'
  2='GENERAL REASON (SOME VARIATION OF NOT INTERESTED)'
  3='TIME ISSUE (IT TAKES TOO LONG)'
  4='SUSPICIOUS'
  5='HOSTILE'
  6='STUDY SPECIFIC REASON'
;

VALUE TE_51F
  1='HOME TELEPHONE #'
  2='WORK TELEPHONE #'
  3='CELL PHONE #'
  4='ADDRESS'
  5='EMAIL'
;

VALUE TE_52F
  1='ALL STATUS VALUES - RESETS RECORD TO "FIRST CALL" STATE (IN_CALLING STATUS / NO REFUSALS)'
  2='NO STATUS CHANGE - RESTORES PREVIOUS STATUS TO RETURN RECORD TO CALLING'
;

VALUE TE_53F
  1='CURRENTLY DRINK'
  2='STOPPED ENTIRELY'
;

VALUE TE_54F
  1='LEFT'
  2='RIGHT'
  3='BOTH'
;

VALUE TE_55F
  1='SECB.FILL_TYPE[1]'
  2='SECB.FILL_TYPE[2]'
  3='SECB.FILL_TYPE[3]'
  4='SECB.FILL_TYPE[4]'
  5='SECB.FILL_TYPE[5]'
  6='SECB.FILL_TYPE[6]'
  7='SECB.FILL_TYPE[7]'
  8='SECB.FILL_TYPE[8]'
  9='SECB.FILL_TYPE[9]'
  10='SECB.FILL_TYPE[10]'
  11='OTHER'
;

VALUE TE_56F
  1='ASHKENAZI JEWISH'
  2='DUTCH'
  3='ICELANDIC'
  4='FRENCH CANADIAN'
;

VALUE TE_57F
  1='INCREASE'
  2='DECREASE'
;

VALUE TE_58F
  1='MATERNAL GRANDMOTHER'
  2='PATERNAL GRANDMOTHER'
  3='MOTHER'
  4='SISTER'
  5='DAUGHTER'
  6='MATERNAL AUNT'
  7='PATERNAL AUNT'
  8='NIECE (CLARIFY BLOOD RELATIVE)'
;

VALUE TE_59F
  1='Never'
  2='Less than once a month'
  3='At least once a month but not every week'
  4='At least once a week but not every day'
  5='At least once a day'
;

VALUE TE_60F
  1='MALE'
  2='FEMALE'
;

VALUE TE_61F
  1='RESPONDENT IS/WAS MENOPAUSAL'
  2='OTHER'
;

VALUE TE_62F
  1='pre-menopausal'
  2='peri-menopausal, or'
  3='post-menopausal'
  8='REFUSED'
  9="DON'T KNOW"
;

VALUE TE_63F
  0='NEVER MENSTRUATED'
  9='9 OR YOUNGER'
  10='10'
  11='11'
  12='12'
  13='13'
  14='14'
  15='15'
  16='16'
  17='17 OR OLDER'
;

VALUE TE_64F
  1='LESS THAN 30 MINUTES'
  2='30 TO 60 MINUTES'
  3='MORE THAN 60 MINUTES'
;

VALUE TE_65F
  1='Less than 3 months'
  2='3-6 months '
  3='7-12 months'
  4='13-24 months'
  5='25-36 months '
  6='Over 36 months'
;

VALUE TE_66F
  1='ONE'
  2='BOTH'
  8='REFUSED'
  9="DON'T KNOW"
;

VALUE TE_67F
  0='NEITHER'
  1='ONE OVARY REMOVED'
  2='BOTH OVARIES REMOVED'
;

VALUE TE_68F
  1='REGULAR'
  2='IRREGULAR'
  3='STOPPED ALTOGETHER'
;

VALUE TE_69F
  1='Pills containing estrogen only'
  2='Pills containing progesterone only'
  3='Pills containing both estrogen and progesterone'
  8='REFUSED'
  9="DON'T KNOW"
;

VALUE TE_70F
  0='you did not change your exercise habits during this time,'
  1='you did change your exercise habits during this time, or'
  2='you were unable to make a change because the final diagnosis came too soon after the mammogram?'
  8='REFUSED'
  9="DON'T KNOW"
;

VALUE TE_71F
  0='you did not change your exercise habits during this time,'
  1='you did change your exercise habits during this time, or'
  2='you were unable to make a change because you are currently still recovering from surgery?'
  8='REFUSED'
  9="DON'T KNOW"
;

VALUE TE_72F
  1='White'
  2='African American/Black'
  3='Asian'
  4='Native Hawaiian or other Pacific Islander'
  5='American Indian or Alaskan Native'
  6='OTHER'
;

VALUE TE_73F
  1='MATERNAL GRANDMOTHER'
  2='MATERNAL GRANDFATHER'
  3='PATERNAL GRANDMOTHER'
  4='PATERNAL GRANDFATHER'
  5='MOTHER'
  6='FATHER'
  7='SISTER'
  8='BROTHER'
  9='DAUGHTER'
  10='SON'
  11='MATERNAL AUNT'
  12='MATERNAL UNCLE'
  13='PATERNAL AUNT'
  14='PATERNAL UNCLE'
  15='NIECE (CLARIFY BLOOD RELATIVE)'
  16='NEPHEW (CLARIFY BLOOD RELATIVE)'
;

VALUE TE_74F
  1='normal'
  2='benign'
  3='malignant'
  4='suspicious'
  5='highly suspicious'
  6='DID NOT HAVE BIOPSY'
  8='REFUSED'
  9="DON'T KNOW"
;

VALUE TE_75F
  1='pain'
  2='blood pressure'
  3='diabetes'
  4='depression'
  5='or some other condition?'
;

VALUE TE_76F
  1='less than 6 hours per night'
  2='6 to 8 hours per night'
  3='more than 8 but less than 12 hours per night'
  4='more than 12 hours per night, or'
  5='your sleep patterns were irregular over time?'
;

VALUE TE_77F
  1='post-menopausal?'
  2='had radiation or chemotherapy, or'
  3='for some other reason'
;

VALUE TE_78F
  1='Pills such as Clomiphene, also known as clomid'
  2='Injections such as Gonadotropins, FSH, and/or hMG'
  3='In-vitro fertilization'
  4='Metformin'
  5='Something else'
;

VALUE TE_79F
  1='MULTIVITAMIN'
  2='BETA-CAROTENE'
  3='VITAMIN A'
  4='VITAMIN C'
  5='VITAMIN E'
  6='FOLIC ACID'
  7='CALCIUM'
  8='SOY'
  9='OTHER'
;

VALUE TE_80F
  1='0 to 13 weeks'
  2='14 to 31 weeks'
  3='32 to 40 weeks'
  4='41 to 50 weeks'
;

VALUE TE_81F
  1='Just about the right weight for you'
  2='Slightly overweight'
  3='Overweight'
  4='Slightly underweight'
  5='Underweight'
;

VALUE TE_82F
  1='BECAUSE OF HYSTERECTOMY'
  2='BEFORE'
;

VALUE TE_83F
  1='LESS THAN 1 YEAR'
  2='1 TO 5 YEARS'
  3='6 TO 10 YEARS'
  4='MORE THAN 10 YEARS AGO'
;

VALUE TE_84F
  1='LESS THAN 1 YEAR AGO'
  2='1 TO 5 YEARS AGO'
  3='6 TO 10 YEARS AGO'
  4='MORE THAN 10 YEARS'
;

VALUE TE_85F
  1='YES'
;

VALUE TE_86F
  5='START CALL TIMER'
  42='NO_GO'
  999='FAKE'
;

VALUE TE_87F
  1='UNKNOWN'
  2='GOOD'
  3='UPDATED'
  4='MISSING'
;

VALUE TE_88F
  1='UNKNOWN'
  2='GOOD'
  3='UPDATED'
  4='MISSING'
;

VALUE TE_89F
  88='REFUSED'
  99="DON'T KNOW"
;

VALUE TE_90F
  888='REFUSED'
  999="DON'T KNOW"
;

VALUE TE_91F
  8888='REFUSED'
  9999="DON'T KNOW"
;

VALUE $TE_93F
'9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999'="DON'T KNOW                            "
;
RUN;
