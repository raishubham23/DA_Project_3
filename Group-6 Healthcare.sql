create database healthcare;
use healthcare;

#####KPI'S#####
     #KPI 1   #Number of Patients across various summaries
select 
 sum(Number_of_patients_included_in_the_transfusion_summary) , 
 sum(Number_of_patients_in_hypercalcemia_summary) ,
 sum(Number_of_patients_in_Serum_phosphorus_summary)  , 
 sum(Number_of_patients_included_in_hospitalization_summary) ,
 sum(Number_of_hospitalizations_included_in_hospital_rdm_smry) ,
 sum(Number_of_Patients_included_in_survival_summary) ,
 sum(Number_of_Patients_included_in_fistula_summary) ,
 sum(Number_of_patients_in_long_term_catheter_summary) , 
 sum(Number_of_patients_in_nPCR_summary) ,  
 sum(Number_of_patients_in_this_facility_for_SWR) ,  
 sum(Number_of_patients_for_PPPW)
from healthcare.dialysis_1;


     #KPI 2   #Profit Vs Non-Profit Stats
select count(state) as "total number of states" , state ,Profit_or_Non_Profit from dialysis_1 group by state order by count(state) desc;
select count(state) as "total states", Profit_or_Non_Profit from dialysis_1 group by Profit_or_Non_Profit;


  #KPI 3   #Top 3 Chain Organizations in terms of no. of dialysis stations
select Chain_Organization , sum(_no_of_Dialysis_Stations) from dialysis_1 group by Chain_Organization order by sum(_no_of_Dialysis_Stations) desc limit 3; 


 #KPI 4(1)   #Dialysis Stations Stats
select sum(_no_of_Dialysis_Stations) as "total dialysis stations" from dialysis_1;

	#KPI 4(2)  #Dialysis Stations Stats in terms of city
select sum(_no_of_Dialysis_Stations),City from dialysis_1 group by city order by sum(_no_of_Dialysis_Stations) desc; 

  
  #KPI 5(1)   ## of Category Text  - As Expected
select count(Patient_Transfusion_category_text) from dialysis_1 where Patient_Transfusion_category_text = "As Expected";
     #KPI 5(2)   ## of Category Text  - As Expected
select count(Patient_hospitalization_category_text) from dialysis_1 where Patient_hospitalization_category_text = "As Expected";
     #KPI 5(3)   ## of Category Text  - As Expected
select count(Patient_Hospital_Readmission_Category) from dialysis_1 where Patient_Hospital_Readmission_Category = "As Expected";
     #KPI 5(4)   ## of Category Text  - As Expected
select count(Patient_Survival_Category_Text) from dialysis_1 where Patient_Survival_Category_Text = "As Expected";
     #KPI 5(5)   ## of Category Text  - As Expected
select count(Patient_Infection_category_text) from dialysis_1 where Patient_Infection_category_text = "As Expected"; 
     #KPI 5(6)   ## of Category Text  - As Expected
select count(Fistula_Category_Text) from dialysis_1 where Fistula_Category_Text = "As Expected"; 
	 #KPI 5(7)   ## of Category Text  - As Expected
select count(SWR_category_text) from dialysis_1 where SWR_category_text = "As Expected"; 
     #KPI 5(8)   ## of Category Text  - As Expected
select count(PPPW_category_text) from dialysis_1 where PPPW_category_text = "As Expected";


   #KPI 6   #Average Payment Reduction Rate
select avg(PY2020_Payment_Reduction_Per._) as "Average Payment Reduction Rate" from dialysis_2;
