SELECT user_id, username, city, sex
FROM users y
WHERE user_id NOT IN
	(SELECT user_id FROM tweets);