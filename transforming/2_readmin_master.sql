CREATE TABLE readmin_master AS SELECT Provider_ID, Hospital_Name, State, Measure_Name, Measure_ID, Compared_to_National, Denominator, Score, Lower_Estimate, Higher_Estimate FROM readmissions;
