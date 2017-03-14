CREATE TABLE hospital_readmin_avgs AS SELECT hospital_name, avg(score) AS bad_score from readmin_master GROUP BY hospital_name;
