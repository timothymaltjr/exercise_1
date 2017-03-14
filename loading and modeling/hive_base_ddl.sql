DROP TABLE effectivecare;
CREATE EXTERNAL TABLE effectivecare (Provider_ID string, Hospital_Name string, Address string, City string, State string, ZIP_Code string, County_Name string, Phone_Number string, Condition string, Measure_ID string, Measure_Name string, Score string, Sample string, Footnote string, Measure_Start_Date string, Measure_End_Date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( "separatorChar" = ",", "quoteChar" = '"', "escapeChar"= '\\')
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/effectivecare';

DROP TABLE readmissions;
CREATE EXTERNAL TABLE readmissions (Provider_ID string, Hospital_Name string, Address string, City string, State string, ZIP_Code string, County_Name string, Phone_Number string, Measure_Name string, Measure_ID string, Compared_to_National string, Denominator string, Score string, Lower_Estimate string, Higher_Estimate string, Footnote string, Measure_Start_Date string, Measure_End_Date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( "separatorChar" = ",", "quoteChar" = '"', "escapeChar"= '\\') 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/readmissions';

DROP TABLE surveys;
CREATE EXTERNAL TABLE surveys (Provider_Number string, Hospital_Name string, Address string, City string, State string, ZIP_Code string, County_Name string, Communication_with_Nurses_Achievement_Points string, Communication_with_Nurses_Improvement_Points string, Communication_with_Nurses_Dimension_Score string, Communication_with_Doctors_Achievement_Points string, Communication_with_Doctors_Improvement_Points string, Communication_with_Doctors_Dimension_Score string, Responsiveness_of_Hospital_Staff_Achievement_Points string, Responsiveness_of_Hospital_Staff_Improvement_Points string, Responsiveness_of_Hospital_Staff_Dimension_Score string, Pain_Management_Achievement_Points string, Pain_Management_Improvement_Points string, Pain_Management_Dimension_Score string, Communication_about_Medicines_Achievement_Points string, Communication_about_Medicines_Improvement_Points string, Communication_about_Medicines_Dimension_Score string, Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points string, Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points string, Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score string, Discharge_Information_Achievement_Points string, Discharge_Information_Improvement_Points string, Discharge_Information_Dimension_Score string, Overall_Rating_of_Hospital_Achievement_Points string, Overall_Rating_of_Hospital_Improvement_Points string, Overall_Rating_of_Hospital_Dimension_Score string, HCAHPS_Base_Score string, HCAHPS_Consistency_Score string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( "separatorChar" = ",", "quoteChar" = '"', "escapeChar"= '\\') 
STORED AS TEXTFILE 
LOCATION '/user/w205/hospital_compare/surveys';

