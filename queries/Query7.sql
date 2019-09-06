SELECT y.user_id, y.username, y.city, y.sex, p.content users_feed, p.created_at
FROM tweet p
JOIN users y
ON y.user_id = p.user_id
WHERE y.user_id = 1
UNION
SELECT y.user_id, y.username, y.city, y.sex, p.content users_feed, p.created_at
FROM tweets p
JOIN users y
ON y.user_id = p.user_id
WHERE y.user_id IN (SELECT user_id FROM followers
WHERE followed_by_id = 1)
ORDER BY created_at DESC;