SELECT e.id, e.name
FROM Employee e
JOIN Employee sub ON e.id = sub.managerId
GROUP BY e.id, e.name
HAVING COUNT(sub.id) >= 5;
