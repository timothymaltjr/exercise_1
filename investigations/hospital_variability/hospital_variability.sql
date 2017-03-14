SELECT measure_name, variance(score) AS variance FROM effectivecare_master WHERE score <> "Not Available" GROUP BY measure_name ORDER BY variance DESC LIMIT 10;
