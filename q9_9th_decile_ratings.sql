SELECT name, ROUND(avg_rating, 2) AS average_rating
FROM (
  SELECT p.name, AVG(r.rating) AS avg_rating,
         NTILE(10) OVER (ORDER BY AVG(r.rating) DESC) AS quantile
  FROM people AS p
  JOIN crew AS c ON p.person_id = c.person_id
  JOIN ratings AS r ON c.title_id = r.title_id
  WHERE p.born = 1955
  GROUP BY p.person_id
) AS subquery
WHERE quantile = 9
ORDER BY avg_rating DESC, name ASC;
