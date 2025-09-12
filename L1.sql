CREATE TABLE suppliers(
   SNO TEXT PRIMARY KEY,
   SNAME TEXT,
   STATUS INTEGER,
   CITY TEXT
);

INSERT INTO suppliers(SNO,SNAME,STATUS,CITY) VALUES
      ('S1','Jhon',20,'london'),
      ('S2','Rajesh',10,'New york'),
      ('S3','Jones',30,'Paris'),
      ('S4','Clark',10,'Paris'),
      ('S5','Suman',40,'Indore');

SELECT * FROM suppliers;