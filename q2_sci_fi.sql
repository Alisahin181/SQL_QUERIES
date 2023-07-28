SELECT t.primary_title, t.premiered, t.runtime_minutes || ' (mins)' AS runtime
FROM titles AS t
WHERE t.genres LIKE '%Sci-Fi%'
ORDER BY t.runtime_minutes DESC
LIMIT 10;
