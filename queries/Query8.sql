SELECT comments comments_for_last_ten_hours, created_at
FROM comments
WHERE created_at BETWEEN SUBDATE(NOW(), INTERVAL 11 HOUR)  AND  NOW()
ORDER BY created_at;