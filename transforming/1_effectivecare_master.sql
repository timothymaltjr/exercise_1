CREATE TABLE effectivecare_master AS SELECT Provider_ID, Hospital_Name, State, Condition, Measure_ID, Measure_Name, Score, Sample 
FROM effectivecare
WHERE Measure_ID NOT IN("ED_2b", "EDV", "OP_26", "ED_1b", "OP_18b", "OP_20", "OP_5", "OP_1", "OP_21", "OP_3b", "MV");
