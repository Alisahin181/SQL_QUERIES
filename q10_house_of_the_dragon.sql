WITH RECURSIVE cte AS (
  SELECT DISTINCT LOWER(title) AS title
  FROM akas
  WHERE title_id IN (
    SELECT title_id
    FROM titles
    WHERE LOWER(primary_title) = 'house of the dragon' AND type = 'tvSeries'
  )
)
SELECT GROUP_CONCAT(title, ', ') AS titles
FROM cte
ORDER BY title COLLATE NOCASE;

