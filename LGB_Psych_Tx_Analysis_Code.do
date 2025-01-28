

*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*


		* DESCRIPTIVE ANALYSIS 


*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*

* In full sample (for sensitivity analysis)

use "LGB_Outcomes_Dataset.dta", clear 
replace sexualorientation = "0" if sexualorientation == "Heterosexual"
replace sexualorientation = "0" if sexualorientation == "Gay/Lesbian"
replace sexualorientation = "0" if sexualorientation == "Bi-sexual"
replace sexualorientation = "3" if sexualorientation == "Not sure"
replace sexualorientation = "4" if sexualorientation == "Declined to answer"
destring sexualorientation, replace
* In men
table1_mc if gender_numeric_miss == 1, by(sexualorientation) percsign("") nospace miss total(after) onecol test stat  /// 
vars(age contn %9.1f \ ethnicity_ons cat %9.1f \  appt_t1_phq9 contn %9.1f \ appt_t1_gad7 contn %9.1f \ imd_decile cat %9.1f \appt_t1_meds_status cat %9.1f \ ltc_case cat %9.1f \ appt_t1_wsas25 contn %9.1f \ diagnosis_numeric cat %9.1f \ appt_t1_employ_stat cat %9.1f \ number_sessions contn %9.1f \ treatment_intensity cat %9.1f \ weeks_days_ref_ass contn %9.1f \  weeks_sec_wait contn %9.1f  \ first_appt_month cat %9.1f  \ first_appt_year cat %9.1f \ ///
recovery cat %9.1f \ reliable_recovery cat %9.1f \ reliable_improve cat %9.1f \ deterioration cat %9.1f \ dropout cat %9.1f \ proportion_attended contn %9.3f \ phq_change contn %9.1f \ gad_change contn %9.1f \ phq9_end contn %9.1f \ gad7_end contn %9.1f \ ///
appt_t1_wsas2 contn %9.1f \ appt_t1_wsas3 contn %9.1f \ appt_t1_wsas4 contn %9.1f \ appt_t1_wsas5 contn %9.1f) ///
saving("descriptive.xlsx", sheet("Male_sen") sheetmodify)
* In women
table1_mc if gender_numeric_miss == 2, by(sexualorientation) percsign("") nospace miss total(after) onecol test stat  /// 
vars(age contn %9.1f \ ethnicity_ons cat %9.1f \  appt_t1_phq9 contn %9.1f \ appt_t1_gad7 contn %9.1f \ imd_decile cat %9.1f \appt_t1_meds_status cat %9.1f \ ltc_case cat %9.1f \ appt_t1_wsas25 contn %9.1f \ diagnosis_numeric cat %9.1f \ appt_t1_employ_stat cat %9.1f \ number_sessions contn %9.1f \ treatment_intensity cat %9.1f \ weeks_days_ref_ass contn %9.1f \  weeks_sec_wait contn %9.1f  \ first_appt_month cat %9.1f  \ first_appt_year cat %9.1f \ ///
recovery cat %9.1f \ reliable_recovery cat %9.1f \ reliable_improve cat %9.1f \ deterioration cat %9.1f \ dropout cat %9.1f \ proportion_attended contn %9.3f \ phq_change contn %9.1f \ gad_change contn %9.1f \ phq9_end contn %9.1f \ gad7_end contn %9.1f \ ///
appt_t1_wsas2 contn %9.1f \ appt_t1_wsas3 contn %9.1f \ appt_t1_wsas4 contn %9.1f \ appt_t1_wsas5 contn %9.1f) ///
saving("descriptive.xlsx", sheet("Female_sen") sheetmodify)

* In main anaylsis sample

use "LGB_Outcomes_Dataset.dta", clear 
replace sexualorientation = "0" if sexualorientation == "Heterosexual"
replace sexualorientation = "1" if sexualorientation == "Gay/Lesbian"
replace sexualorientation = "2" if sexualorientation == "Bi-sexual"
replace sexualorientation = "3" if sexualorientation == "Not sure"
replace sexualorientation = "4" if sexualorientation == "Declined to answer"
* Drop people who did not clearly report sexualorientation for the main analysis
drop if sexualorientation == "3" | sexualorientation == "4"
destring sexualorientation, replace
* In men
table1_mc if gender_numeric_miss == 1, by(sexualorientation) percsign("") nospace miss total(after) onecol test stat  /// 
vars(age contn %9.1f \ ethnicity_ons cat %9.1f \  appt_t1_phq9 contn %9.1f \ appt_t1_gad7 contn %9.1f \ imd_decile cat %9.1f \appt_t1_meds_status cat %9.1f \ ltc_case cat %9.1f \ appt_t1_wsas25 contn %9.1f \ diagnosis_numeric cat %9.1f \ appt_t1_employ_stat cat %9.1f \ number_sessions contn %9.1f \ treatment_intensity cat %9.1f \ weeks_days_ref_ass contn %9.1f \  weeks_sec_wait contn %9.1f  \ first_appt_month cat %9.1f  \ first_appt_year cat %9.1f \ ///
recovery cat %9.1f \ reliable_recovery cat %9.1f \ reliable_improve cat %9.1f \ deterioration cat %9.1f \ dropout cat %9.1f \ proportion_attended contn %9.3f \ phq_change contn %9.1f \ gad_change contn %9.1f \ phq9_end contn %9.1f \ gad7_end contn %9.1f \ ///
appt_t1_wsas2 contn %9.1f \ appt_t1_wsas3 contn %9.1f \ appt_t1_wsas4 contn %9.1f \ appt_t1_wsas5 contn %9.1f) ///
saving("descriptive.xlsx", sheet("Male") sheetmodify)
* In women
table1_mc if gender_numeric_miss == 2, by(sexualorientation) percsign("") nospace miss total(after) onecol test stat  /// 
vars(age contn %9.1f \ ethnicity_ons cat %9.1f \  appt_t1_phq9 contn %9.1f \ appt_t1_gad7 contn %9.1f \ imd_decile cat %9.1f \appt_t1_meds_status cat %9.1f \ ltc_case cat %9.1f \ appt_t1_wsas25 contn %9.1f \ diagnosis_numeric cat %9.1f \ appt_t1_employ_stat cat %9.1f \ number_sessions contn %9.1f \ treatment_intensity cat %9.1f \ weeks_days_ref_ass contn %9.1f \  weeks_sec_wait contn %9.1f  \ first_appt_month cat %9.1f  \ first_appt_year cat %9.1f \ ///
recovery cat %9.1f \ reliable_recovery cat %9.1f \ reliable_improve cat %9.1f \ deterioration cat %9.1f \ dropout cat %9.1f \ proportion_attended contn %9.3f \ phq_change contn %9.1f \ gad_change contn %9.1f \ phq9_end contn %9.1f \ gad7_end contn %9.1f \ ///
appt_t1_wsas2 contn %9.1f \ appt_t1_wsas3 contn %9.1f \ appt_t1_wsas4 contn %9.1f \ appt_t1_wsas5 contn %9.1f) ///
saving("descriptive.xlsx", sheet("Female") sheetmodify)


*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*


		* MULTIPLE IMPUTATION


*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
use "LGB_Outcomes_Dataset.dta", clear 

* recode binary gender variable to 0 and 1 to use for logistic regression
recode gender_numeric_miss (1=0) (2=1)

*** Multiple imputations
log using "MICE_imputation_log.log", replace

* keep only variables needed for analysis
keep sexualorientation patient_id appt_t1_phq9 appt_t1_gad7 first_appt_year first_appt_month gender_numeric_miss age imd_rank ethnicity_ons ethnicity appt_t1_employ_stat ltc_case appt_t1_meds_status appt_t1_wsas2 appt_t1_wsas3 appt_t1_wsas4 appt_t1_wsas5 diagnosis_numeric main_intensity treatment_intensity number_sessions weeks_days_ref_ass weeks_sec_wait total_cancel ///
reliable_recovery recovery reliable_improve deterioration dropout phq_change gad_change ///
proportion_attended unattended_appts all_potential_appts ///
count_dna count_cancel_pt ///
endcode number_sessions phq9_base phq9_end gad7_base gad7_end first_adsm last_adsm adsm_in_use 


* Prepare 
mi set mlong

* See missingness (variables not listed have no missing)
mi misstable summarize 

* "mi register imputed" lists all the variables you need to impute for.
mi register imputed appt_t1_phq9 appt_t1_gad7 gender_numeric_miss age imd_rank ethnicity_ons appt_t1_employ_stat ltc_case appt_t1_meds_status appt_t1_wsas2 appt_t1_wsas3 appt_t1_wsas4 appt_t1_wsas5 diagnosis_numeric treatment_intensity  weeks_days_ref_ass weeks_sec_wait


* imputation command (note that you need to specify the type of variables - logit = binary, ologit = ordered, mlogit = nominal,  (pmm,knn(10)) for continuous with k nearest neighbours)
mi impute chained (mlogit) ethnicity_ons appt_t1_employ_stat appt_t1_meds_status diagnosis_numeric treatment_intensity (logit) ltc_case gender_numeric_miss (pmm,knn(10)) appt_t1_phq9 appt_t1_gad7 age imd_rank appt_t1_wsas2 appt_t1_wsas3 appt_t1_wsas4 appt_t1_wsas5 weeks_days_ref_ass weeks_sec_wait, add(50) rseed(1234) augment noisily showcommand
* add() is here you specify the number of datasets to impute.

* then use commands to create variables across imputed datasets using variables you have imputed:
mi passive: egen imd_decile = cut(imd_rank), group(10)
mi passive: replace imd_decile = imd_decile + 1 if imd_decile != . 
mi passive: egen appt_t1_wsas25 = rowtotal(appt_t1_wsas2 appt_t1_wsas3 appt_t1_wsas4 appt_t1_wsas5), miss

merge m:1 patient_id using "ptid_services.dta" // merge in submission services variable 

replace sexualorientation = "0" if sexualorientation == "Heterosexual"
replace sexualorientation = "1" if sexualorientation == "Gay/Lesbian"
replace sexualorientation = "2" if sexualorientation == "Bi-sexual"
replace sexualorientation = "3" if sexualorientation == "Not sure"
replace sexualorientation = "4" if sexualorientation == "Declined to answer"
gen sexualorientation2 = sexualorientation // for sensitivity analysis
replace sexualorientation = "" if sexualorientation == "3" | sexualorientation == "4"
destring sexualorientation, replace
destring sexualorientation2, replace


replace submission_services = "1" if submission_services == "B&D"
replace submission_services = "2" if submission_services == "BEH"
replace submission_services = "3" if submission_services == "Cam&Isl"
replace submission_services = "4" if submission_services == "City&Hackney"
replace submission_services = "5" if submission_services == "Redbr"
destring submission_services, replace

save "Imputed_Data_50.dta", replace
log close

*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*


		* MAIN ANALYSIS (MULTI-LEVEL, CLUSTERING BY SERVICE)


*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
use "Imputed_Data_50.dta", clear

* Drop people who did not report sexualorientation for the main analysis
drop if sexualorientation2 == 3 | sexualorientation2 == 4

********************************************************************************
* IN MEN
********************************************************************************
log using "main_analysis_men.log", replace

preserve
* Results in MEN
keep if gender_numeric_miss == 0

* Logistic regression models 
foreach outcome in reliable_recovery reliable_improve dropout {

* Model 1 - adjusting for pre-treatment outcome measures only
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :

* Model 2 - further adjusting for sociodemographic and clinical factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :

* Model 3 - further adjusting for treatment and service factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :

* Model 4 - further adjusting for cohort factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
}
* Linear regression models
foreach outcome in phq_change gad_change proportion_attended {

* Model 1 - adjusting for pre-treatment outcome measures only
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :

* Model 2 - further adjusting for sociodemographic and clinical factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :

* Model 3 - further adjusting for treatment and service factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :

* Model 4 - further adjusting for cohort factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
}

restore

log close


********************************************************************************
* IN WOMEN
********************************************************************************
log using "main_analysis_women.log", replace
preserve
* Results in WOMEN
keep if gender_numeric_miss == 1

* Logistic regression models 
foreach outcome in reliable_recovery reliable_improve dropout {

* Model 1 - adjusting for pre-treatment outcome measures only
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :

* Model 2 - further adjusting for sociodemographic and clinical factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :

* Model 3 - further adjusting for treatment and service factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :

* Model 4 - further adjusting for cohort factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
}
* Linear regression models
foreach outcome in phq_change gad_change proportion_attended {

* Model 1 - adjusting for pre-treatment outcome measures only
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :

* Model 2 - further adjusting for sociodemographic and clinical factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :

* Model 3 - further adjusting for treatment and service factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :

* Model 4 - further adjusting for cohort factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
}
restore

log close



*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*


		* SENSITIVITY ANALYSIS BY REPORTING STATUS


*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
use "Imputed_Data_50.dta", clear

drop sexualorientation
rename sexualorientation2 sexualorientation
replace sexualorientation = 0 if sexualorientation == 1
replace sexualorientation = 0 if sexualorientation == 2

log using "sen_analysis_men.log", replace
********************************************************************************
* IN MEN
********************************************************************************
preserve
* Results in MEN
keep if gender_numeric_miss == 0

* Logistic regression models 
foreach outcome in reliable_recovery reliable_improve dropout {

* Model 1 - adjusting for pre-treatment outcome measures only
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :

* Model 2 - further adjusting for sociodemographic and clinical factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :

* Model 3 - further adjusting for treatment and service factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :

* Model 4 - further adjusting for cohort factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
}
* Linear regression models
foreach outcome in phq_change gad_change proportion_attended {

* Model 1 - adjusting for pre-treatment outcome measures only
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :

* Model 2 - further adjusting for sociodemographic and clinical factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :

* Model 3 - further adjusting for treatment and service factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :

* Model 4 - further adjusting for cohort factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
}

restore

log close


********************************************************************************
* IN WOMEN
********************************************************************************
log using "sen_analysis_women.log", replace
preserve
* Results in WOMEN
keep if gender_numeric_miss == 1

* Logistic regression models 
foreach outcome in reliable_recovery reliable_improve dropout {

* Model 1 - adjusting for pre-treatment outcome measures only
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :

* Model 2 - further adjusting for sociodemographic and clinical factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :

* Model 3 - further adjusting for treatment and service factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :

* Model 4 - further adjusting for cohort factors
mi estimate, or: meqrlogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
}
* Linear regression models
foreach outcome in phq_change gad_change proportion_attended {

* Model 1 - adjusting for pre-treatment outcome measures only
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :

* Model 2 - further adjusting for sociodemographic and clinical factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :

* Model 3 - further adjusting for treatment and service factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :

* Model 4 - further adjusting for cohort factors
mi estimate: mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
}
restore
log close



*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*


		* COMPLETE CASE ANALYSIS


*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
use "LGB_Outcomes_Dataset.dta", clear 

replace sexualorientation = "0" if sexualorientation == "Heterosexual"
replace sexualorientation = "1" if sexualorientation == "Gay/Lesbian"
replace sexualorientation = "2" if sexualorientation == "Bi-sexual"
replace sexualorientation = "3" if sexualorientation == "Not sure"
replace sexualorientation = "4" if sexualorientation == "Declined to answer"
replace sexualorientation = "" if sexualorientation == "3" | sexualorientation == "4"
destring sexualorientation, replace

drop if sexualorientation == .

log using "complete_case_men.log", replace
********************************************************************************
* IN MEN
********************************************************************************
preserve
* Results in MEN
keep if gender_numeric_miss == 1

* Logistic regression models 
foreach outcome in reliable_recovery reliable_improve dropout {

* Model 0 - unadjusted model
melogit `outcome' i.sexualorientation || submission_services :, or
estat icc

* Model 1 - adjusting for pre-treatment outcome measures only
melogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :, or
estat icc

* Model 2 - further adjusting for sociodemographic and clinical factors
melogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :, or
estat icc

* Model 3 - further adjusting for treatment and service factors
melogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait  || submission_services :, or
estat icc

* Model 4 - further adjusting for cohort factors
melogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :, or
estat icc

}
* Linear regression models
foreach outcome in phq_change gad_change proportion_attended {

* Model 0 - unadjusted model
mixed `outcome' i.sexualorientation || submission_services :
estat icc

* Model 1 - adjusting for pre-treatment outcome measures only
mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :
estat icc

* Model 2 - further adjusting for sociodemographic and clinical factors
mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :
estat icc

* Model 3 - further adjusting for treatment and service factors
mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :
estat icc

* Model 4 - further adjusting for cohort factors
mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
estat icc

}

restore
log close

log using "complete_case_women.log", replace
********************************************************************************
* IN WOMEN
********************************************************************************
preserve
* Results in WOMEN
keep if gender_numeric_miss == 2

foreach outcome in reliable_recovery reliable_improve dropout {

* Model 0 - unadjusted model
melogit `outcome' i.sexualorientation || submission_services :, or
estat icc

* Model 1 - adjusting for pre-treatment outcome measures only
melogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :, or
estat icc

* Model 2 - further adjusting for sociodemographic and clinical factors
melogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :, or
estat icc

* Model 3 - further adjusting for treatment and service factors
melogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :, or
estat icc

* Model 4 - further adjusting for cohort factors
melogit `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :, or
estat icc

}
* Linear regression models
foreach outcome in phq_change gad_change proportion_attended {

* Model 0 - unadjusted model
mixed `outcome' i.sexualorientation || submission_services :
estat icc

* Model 1 - adjusting for pre-treatment outcome measures only
mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 || submission_services :
estat icc

* Model 2 - further adjusting for sociodemographic and clinical factors
mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat || submission_services :
estat icc

* Model 3 - further adjusting for treatment and service factors
mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait || submission_services :
estat icc

* Model 4 - further adjusting for cohort factors
mixed `outcome' i.sexualorientation appt_t1_phq9 appt_t1_gad7 age i.ethnicity_ons i.imd_decile i.appt_t1_meds_status i.ltc_case appt_t1_wsas25 i.diagnosis_numeric i.appt_t1_employ_stat number_sessions i.treatment_intensity weeks_days_ref_ass weeks_sec_wait i.first_appt_month i.first_appt_year || submission_services :
estat icc

}

restore

log close