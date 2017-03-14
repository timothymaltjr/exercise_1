SELECT state_avgs.state, good_score, bad_score FROM state_avgs FULL OUTER JOIN state_readmin_avgs ON state_avgs.state = state_readmin_avgs.state ORDER BY good_score DESC LIMIT 10;
