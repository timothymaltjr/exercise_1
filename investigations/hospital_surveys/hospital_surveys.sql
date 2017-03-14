SELECT hospital_avgs.Hospital_Name, hospital_avgs.good_score,
overall_achievement, 
overall_improvement, 
overall_dimension, 
hcahps_base_score, 
hcahps_consistency_score
FROM hospital_avgs
LEFT JOIN survey_avgs ON hospital_avgs.hospital_name = survey_avgs.hospital_name
ORDER BY overall_achievement DESC LIMIT 10;
