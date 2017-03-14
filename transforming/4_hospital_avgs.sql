CREATE TABLE hospital_avgs AS SELECT hospital_name, avg(score) AS good_score FROM effectivecare_master GROUP BY hospital_name;
