CREATE TABLE IF NOT EXISTS NONNON(
    NAME TEXT,
    NEIGHBOURHOOD TEXT,
    CUISINE TEXT,
    REVIEW REAL,
    PRICE TEXT,
    HEALTH TEXT
);

INSERT INTO NONNON(NAME,NEIGHBOURHOOD,CUISINE,REVIEW,PRICE,HEALTH) VALUES
    ('Peter', 'Brooklyn', 'American', 4.4, '$$$$', 'A'),
    ('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
    ('Pocha', 'Midtown', 'Italian', 4, '$$$', 'B'),
    ('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
    ('Minca', 'Downtown', 'American', 4.6, '$$$', NULL),
    ('Marea', 'Chinatown', 'Chinese', 3.0, '$$', NULL),
    ('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
    ('Di Fara Pizza', 'Brooklyn', 'Italian', 3.8, '$$$', 'A'),
    ('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');

SELECT DISTINCT NEIGHBOURHOOD 
FROM NONNON;

SELECT DISTINCT CUISINE
FROM NONNON;

SELECT *
FROM NONNON
WHERE CUISINE = 'Chinese';

SELECT *
FROM NONNON
WHERE REVIEW >= 4;

SELECT *
FROM NONNON
WHERE CUISINE = 'Italian' AND PRICE = '$$$';

SELECT *
FROM NONNON
WHERE NAME LIKE '%Candy%';

SELECT *
FROM NONNON
WHERE NEIGHBOURHOOD IN ('Midtown','Downtown','Uptown');

SELECT *
FROM NONNON
ORDER BY REVIEW DESC LIMIT 4; 