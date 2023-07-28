SELECT 
  CASE 
    WHEN SUBSTR(t.premiered, 1, 3) = '190' THEN '1900s'
    WHEN SUBSTR(t.premiered, 1, 3) = '191' THEN '1910s'
    WHEN SUBSTR(t.premiered, 1, 3) = '192' THEN '1920s'
    WHEN SUBSTR(t.premiered, 1, 3) = '193' THEN '1930s'
    WHEN SUBSTR(t.premiered, 1, 3) = '194' THEN '1940s'
    WHEN SUBSTR(t.premiered, 1, 3) = '195' THEN '1950s'
    WHEN SUBSTR(t.premiered, 1, 3) = '196' THEN '1960s'
    WHEN SUBSTR(t.premiered, 1, 3) = '197' THEN '1970s'
    WHEN SUBSTR(t.premiered, 1, 3) = '198' THEN '1980s'
    WHEN SUBSTR(t.premiered, 1, 3) = '199' THEN '1990s'
    WHEN SUBSTR(t.premiered, 1, 3) = '200' THEN '2000s'
    WHEN SUBSTR(t.premiered, 1, 3) = '201' THEN '2010s'
    WHEN SUBSTR(t.premiered, 1, 3) = '202' THEN '2020s'
    ELSE 'Unknown'
  END AS decade,
  ROUND(AVG(r.rating), 2) AS avg_rating,
  MAX(r.rating) AS top_rating,
  MIN(r.rating) AS min_rating,
  COUNT(*) AS num_releases
FROM titles AS t
JOIN ratings AS r ON t.title_id = r.title_id
WHERE t.premiered IS NOT NULL AND t.premiered != ''
GROUP BY decade
ORDER BY avg_rating DESC, decade ASC;

