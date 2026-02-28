SELECT a.name, SUM(t.amount) AS balance
FROM Users a
LEFT JOIN Transactions t
ON a.account=t.account
GROUP BY t.account HAVING SUM(t.amount)>10000;
