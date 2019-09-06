SELECT n.tweet_id, n.content tweets, COUNT(b.comment_id) comments_num
FROM tweet n
INNER JOIN comments b
ON b.tweet_id = b.tweet_id
GROUP BY b.tweet_id
ORDER BY comments_num DESC;