CREATE TABLE state_readmin_avgs AS SELECT state, avg(score) AS bad_score from readmin_master GROUP BY state;
