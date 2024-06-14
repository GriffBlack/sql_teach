DROP TABLE IF EXISTS nodes cascade;
CREATE TABLE nodes (
    point1 CHAR VARYING(1),
    point2 CHAR VARYING(1),
    cost INTEGER check(cost >= 0)
);

INSERT INTO nodes
VALUES
    ('a', 'b', 10),
    ('a', 'd', 20),
    ('a', 'c', 15),
    ('b', 'a', 10),
    ('b', 'c', 35),
    ('b', 'd', 25),
    ('c', 'a', 15),
    ('c', 'b', 35),
    ('c', 'd', 30),
    ('d', 'a', 20),
    ('d', 'b', 25),
    ('d', 'c', 30);

WITH RECURSIVE nodes_amount AS (
    SELECT count(DISTINCT point1) AS amount FROM nodes
), paths AS (
    SELECT 
        point1,
        point2,
        cost AS total_cost,
        1 AS step,
        (point1 || ',' || point2) AS tour
    FROM nodes
    WHERE point1 = 'a'
    UNION
    SELECT 
        nodes.point1,
        nodes.point2,
        nodes.cost + paths.total_cost,
        step + 1,
        (tour || ',' || nodes.point2)
    FROM nodes 
    JOIN paths ON (paths.point2 = nodes.point1 AND paths.point1 != nodes.point2)
    WHERE step < (SELECT amount FROM nodes_amount)
), full_loops AS (
    SELECT total_cost, ('{' || tour || '}') AS tour
    FROM paths
    WHERE step = (SELECT amount FROM nodes_amount) AND tour LIKE 'a%a'
)

SELECT * FROM full_loops
WHERE total_cost <= (SELECT MIN(total_cost) FROM full_loops)
ORDER BY 1, 2;