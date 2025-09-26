CREATE TABLE IF NOT EXISTS Salesman(
    SALESMAN_ID TEXT PRIMARY KEY,
    NAME TEXT,
    CITY TEXT,
    COMISSION REAL 
);

INSERT INTO Salesman(SALESMAN_ID,NAME,CITY,COMISSION) VALUES
    ('5001', 'James Hoog', 'New York', 0.15),
    ('5002', 'Nail Knite', 'Paris', 0.13),
    ('5005', 'Pit Alex', 'London', 0.11),
    ('5006', 'Mc Lyon', 'Paris', 0.14),
    ('5007', 'Paul Adam', 'Rome', 0.13),
    ('5003', 'Lauson Hen', 'San Jose', 0.12);

CREATE TABLE IF NOT EXISTS Customer(
    CUSTOMER_ID TEXT,
    CUST_NAME TEXT PRIMARY KEY,
    CITY TEXT,
    GRADE INTEGER,
    SALESMAN_ID TEXT,
    FOREIGN KEY (SALESMAN_ID) REFERENCES Salesman(SALESMAN_ID)
);

INSERT INTO Customer(CUSTOMER_ID, CUST_NAME,CITY,GRADE,SALESMAN_ID) VALUES
    ('3002', 'nick rimando', 'New york', 100, '5001'),
    ('3007', 'brad davis', 'New york', 200, '5001'),
    ('3005', 'graham zusi', 'California', 200, '5002'),
    ('3008', 'julian green', 'London', 300, '5002'),
    ('3004', 'fabian johnson', 'Paris', 300, '5006'),
    ('3009', 'geoff cameron', 'Berlin', 100, '5003'),
    ('3003', 'jozy altidor', 'Moscow', 200, '5007'),
    ('3001', 'brad guzan', 'London', NULL, '5005');

CREATE TABLE Orders(
    ORD_NO TEXT PRIMARY KEY,
    PURCH_AMT REAL,
    ORD_DATE TEXT,
    CUSTOMER_ID TEXT,
    SALESMAN_ID TEXT,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
    FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN(SALESMAN_ID)
);

INSERT INTO Orders(ORD_NO,PURCH_AMT,ORD_DATE,CUSTOMER_ID,SALESMAN_ID) VALUES
    ('70001', 150.5, '2012-10-05', '3005', '5002'),
    ('70009', 270.65, '2012-09-10', '3001', '5001'),
    ('70002', 65.26, '2012-10-05', '3002', '5003'),
    ('70004', 110.5, '2012-08-17', '3009', '5007'),
    ('70007', 948.5, '2012-09-10', '3005', '5005'),
    ('70005', 2400.6, '2012-07-27', '3007', '5006');

SELECT Customer.CUST_NAME, SALESMAN.NAME, SALESMAN.CITY
FROM Customer
JOIN Salesman ON Customer.city = Salesman.city;

SELECT Customer.CUST_NAME AS 'Customer',
Customer.CITY as 'City',
Salesman.NAME as 'Salesman',
Salesman.COMISSION
FROM Customer
JOIN Salesman ON Customer.SALESMAN_ID = Salesman.SALESMAN_ID
WHERE Salesman.COMISSION BETWEEN 0.12 AND 0.14; 

SELECT Customer.CUST_NAME AS 'Customer', Customer.GRADE AS 'Grade'
FROM Orders
JOIN Salesman ON Orders.SALESMAN_ID = Salesman.SALESMAN_ID
JOIN Customer ON Orders.CUSTOMER_ID = Customer.CUSTOMER_ID
WHERE Customer.GRADE IS NOT NULL;