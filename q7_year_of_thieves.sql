SELECT COUNT(DISTINCT title_id) AS num_works
FROM titles
WHERE premiered = (SELECT premiered FROM titles WHERE primary_title = 'Army of Thieves');
