SELECT t.tweet_id, u.username, t.content, t.created_at
FROM tweets t
JOIN users u
ON u.user_id = t.user_id
ORDER BY t.created_at DESC
LIMIT 5;