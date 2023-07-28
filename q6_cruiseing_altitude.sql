SELECT t.primary_title, r.votes
FROM titles AS t
JOIN ratings AS r ON t.title_id = r.title_id
JOIN crew AS c ON t.title_id = c.title_id
JOIN people AS p ON c.person_id = p.person_id
WHERE p.name LIKE '%Cruise%' AND p.born = 1962
ORDER BY r.votes DESC
LIMIT 10;

