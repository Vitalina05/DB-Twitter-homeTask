SELECT y.user_id, y.username, y.city, y.sex COUNT(f.followed_by_id) followers_num
FROM user y
JOIN followers k
ON k.user_id = y.user_id
GROUP BY k.user_id
HAVING followers_num >=1;