-- Histogram of Tweets (Twitter SQL Interview Question)
-- This query creates a histogram showing how many users
-- posted a certain number of tweets in 2022.

SELECT
    tweet_count AS tweet_bucket,
    COUNT(*) AS users_num
FROM (
    SELECT
        user_id,
        COUNT(*) AS tweet_count
    FROM tweets
    WHERE EXTRACT(YEAR FROM tweet_date) = 2022
    GROUP BY user_id
) t
GROUP BY tweet_count
ORDER BY tweet_bucket;

