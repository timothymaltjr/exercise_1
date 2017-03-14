SELECT hospital_avgs.hospital_name, good_score, bad_score FROM hospital_avgs FULL OUTER JOIN hospital_readmin_avgs ON hospital_avgs.hospital_name = hospital_readmin_avgs.hospital_name WHERE good_score = "100" ORDER BY bad_score LIMIT 10;