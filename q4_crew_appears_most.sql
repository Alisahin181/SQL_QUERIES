SELECT p.name, COUNT(*) AS num_appearances
FROM crew AS c
JOIN people AS p ON c.person_id = p.person_id
GROUP BY c.person_id
ORDER BY num_appearances DESC, p.name ASC
LIMIT 20;
