
EXPLAIN SELECT
  u.url 
FROM 
  url_lists4 u,
  keywords4 k
WHERE
  u.url like k.url
AND
  k.name = 'esc_url';

EXPLAIN ANALYZE SELECT
  u.url 
FROM 
  url_lists4 u,
  keywords4 k
WHERE
  u.url like k.url
AND
  k.name = 'esc_url';


SELECT
  u.url 
FROM 
  url_lists4 u,
  keywords4 k
WHERE
  u.url like k.url
AND
  k.name = 'esc_url';
