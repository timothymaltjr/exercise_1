CREATE TABLE effectivecare_master AS SELECT Provider_ID, Hospital_Name, State, Condition, Measure_ID, Measure_Name, Score, Sample 
FROM effectivecare
WHERE Measure_ID NOT IN("ED_2b", "EDV", "OP_26", "ED_1b", "OP_18b", "OP_20", "OP_5", "OP_1", "OP_21", "OP_3b", "MV");

CREATE TABLE readmin_master AS SELECT Provider_ID, Hospital_Name, State, Measure_Name, Measure_ID, Compared_to_National, Denominator, Score, Lower_Estimate, Higher_Estimate FROM readmissions;

CREATE TABLE survey_master AS SELECT Provider_Number, Hospital_Name, substring(Overall_Rating_of_Hospital_Achievement_Points, 0, 2) AS Overall_Achievement, substring(Overall_Rating_of_Hospital_Improvement_Points, 0, 2) AS Overall_Improvement, 
substring(Overall_Rating_of_Hospital_Dimension_Score, 0, 2) AS Overall_Dimension, HCAHPS_Base_Score, HCAHPS_Consistency_Score FROM surveys;

CREATE TABLE hospital_avgs AS SELECT hospital_name, avg(score) AS good_score FROM effectivecare_master GROUP BY hospital_name;

CREATE TABLE hospital_readmin_avgs AS SELECT hospital_name, avg(score) AS bad_score from readmin_master GROUP BY hospital_name;

CREATE TABLE state_avgs AS SELECT state, avg(score) AS good_score from effectivecare_master GROUP BY state;

CREATE TABLE state_readmin_avgs AS SELECT state, avg(score) AS bad_score from readmin_master GROUP BY state;

CREATE TABLE survey_avgs AS SELECT Hospital_Name, avg(Overall_Achievement) AS overall_achievement, avg(Overall_Improvement) AS overall_improvement, avg(overall_dimension) AS overall_dimension, avg(HCAHPS_Base_Score) AS hcahps_base_score, avg(HCAHPS_Consistency_Score) AS hcahps_consistency_score FROM survey_master GROUP BY hospital_name;
