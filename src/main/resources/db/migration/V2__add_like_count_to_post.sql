ALTER TABLE post
    ADD COLUMN like_count INTEGER NOT NULL DEFAULT 0;

UPDATE post p
SET like_count = aggregated.like_count
FROM (
    SELECT post_id, COUNT(*)::INTEGER AS like_count
    FROM post_like
    GROUP BY post_id
) aggregated
WHERE p.post_id = aggregated.post_id;
