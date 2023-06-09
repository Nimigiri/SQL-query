SELECT s.name
FROM students s
JOIN friends f ON s.id = f.id
JOIN packages p ON f.friend_id = p.id
WHERE p.salary > (SELECT salary FROM packages WHERE id = s.id)
ORDER BY p.salary;
