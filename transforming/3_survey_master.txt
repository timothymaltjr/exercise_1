CREATE TABLE survey_master AS SELECT Provider_Number, Hospital_Name, substring(Overall_Rating_of_Hospital_Achievement_Points, 0, 2) AS Overall_Achievement, substring(Overall_Rating_of_Hospital_Improvement_Points, 0, 2) AS Overall_Improvement, 
substring(Overall_Rating_of_Hospital_Dimension_Score, 0, 2) AS Overall_Dimension, HCAHPS_Base_Score, HCAHPS_Consistency_Score FROM surveys;
