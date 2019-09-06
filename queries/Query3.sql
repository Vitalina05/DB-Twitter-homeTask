SELECT y.user_id, y.username, y.city, y.sex COUNT(k.followed_by_id) followers_num
FROM user y
LEFT JOIN followers k
ON  y.user_id = f.user_id
GROUP BY y.user_id
ORDER BY followers_num DESC;