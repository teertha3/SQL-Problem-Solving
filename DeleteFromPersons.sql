-- using group by & having
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email)>=2;

--using joins
DELETE  p1
FROM Person p1
JOIN Person p2
ON p1.Email=p2.Email
WHERE p1.Id>p2.Id;
