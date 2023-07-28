SELECT DISTINCT p.name
FROM crew AS c1
JOIN titles AS t ON c1.title_id = t.title_id
JOIN crew AS c2 ON t.title_id = c2.title_id
JOIN people AS p ON c2.person_id = p.person_id
WHERE c1.person_id IN (
  SELECT person_id
  FROM people
  WHERE name = 'Nicole Kidman'
)
  AND c1.category IN ('actor', 'actress')
  AND c2.category IN ('actor', 'actress')
ORDER BY p.name;


