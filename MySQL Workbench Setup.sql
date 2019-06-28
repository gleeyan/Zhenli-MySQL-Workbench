/*use world schema*/
USE world

/* Sampling 10 records in world.city*/
SELECT * FROM world.city
LIMIT 10
;

/*inserting record*/
INSERT INTO CITY (Name,CountryCode,District,Population) VALUES ('Awesome Town','AFG','Kabol','1');
SELECT * FROM world.city
WHERE Name='Awesome Town'
;

/*Updating SCHEMA: world TABLE: county*/
/*NOTE: had to unselect Safe Updates (rejects UPDATES and DELETES with no restrictions*/
UPDATE WORLD.CITY SET Population=2 WHERE NAME='Kabul';


/*Deleting Awesome Town record*/
DELETE from CITY WHERE Name='Awesome Town';
SELECT * FROM world.city
WHERE Name='Awesome Town'
; /*no return*/