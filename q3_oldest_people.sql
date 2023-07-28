SELECT name, (strftime('%Y', 'now') - born) AS age
FROM people
WHERE born >= 1900 AND (died IS NULL OR died = '')
ORDER BY age DESC
LIMIT 20;
