\timing on

/*
EXPLAIN SELECT
  u.url 
FROM 
  url_lists4 u
WHERE  u.url &?> Array(
  SELECT
    url 
  FROM
    keywords4
  WHERE
    name = 'esc_url'
);

EXPLAIN ANALYZE SELECT
  u.url 
FROM 
  url_lists4 u
WHERE  u.url &?> Array(
  SELECT
    url 
  FROM
    keywords4
  WHERE
    name = 'esc_url'
);
*/

SELECT
  u.url 
FROM 
  url_lists4 u
WHERE  u.url &?> Array(
  SELECT
    url 
  FROM
    keywords4
  WHERE
    name = 'esc_url'
);
