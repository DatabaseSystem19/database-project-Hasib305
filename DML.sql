----< Data Insertion >----

-- INSERT INTO EMPLOYEE VALUES (Emp_ID, Name,Contact, username,password,address);
INSERT INTO Employee VALUES (0, 'Smith', '01715043801','sm00','101','80-Dhaka');
INSERT INTO Employee VALUES (1, 'Jerry', '01715043802','je01','102','81-Dhaka');
INSERT INTO Employee VALUES (2, 'Geore', '01715043803','ge02','103','82-Dhaka');
INSERT INTO Employee VALUES (3, 'Elaine', '01715043804','el03','104','83-Dhaka');
INSERT INTO Employee VALUES (4, 'Jim', '01715043805','ji04','105','84-Dhaka');
INSERT INTO Employee VALUES (5, 'kim', '01715043806','ki05','106','85-Dhaka');
INSERT INTO Employee VALUES (6, 'Arnold', '01715043807','ar06','107','86-Dhaka');
INSERT INTO Employee VALUES (7, 'Michellet', '01715043808','mi07','108','87-Dhaka');
INSERT INTO Employee VALUES (8, 'Amer', '01715043809','am08','109','88-Dhaka');
INSERT INTO Employee VALUES (9, 'Ron', '01715043800','ro09','110','89-Dhaka');
INSERT INTO Employee VALUES (10, 'Rocky', '01715043810','ro10','100','90-Dhaka');


-- INSERT INTO Customer VALUES (Cust_ID,Cust_Name,phone, username,password,CUST_ADDRESS);
INSERT INTO Customer VALUES (11, 'Mith', '01715043301','mi00','201','80-khulna');
INSERT INTO Customer VALUES (12, 'Jero', '01715043302','je01','202','81-khulna');
INSERT INTO Customer VALUES (13, 'Geow', '01715043303','ge02','203','82-khulna');
INSERT INTO Customer VALUES (14, 'Eline', '01715043304','el03','204','83-khulna');
INSERT INTO Customer VALUES (15, 'Jamo', '01715043305','ja04','205','84-khulna');
INSERT INTO Customer VALUES (16, 'kumo', '01715043306','ku05','206','85-khulna');
INSERT INTO Customer VALUES (17, 'Arno', '01715043307','ar06','207','86-khulna');
INSERT INTO Customer VALUES (18, 'Millet', '01715043308','mi07','208','87-sylhet');
INSERT INTO Customer VALUES (19, 'Amos', '01715043309','am08','209','88-sylhet');
INSERT INTO Customer VALUES (20, 'Ronny', '01715043300','ro09','210','89-sylhet');
INSERT INTO Customer VALUES (21, 'Rock', '01715043310','ro10','200','90-sylhet');

--INSERT INTO Food_info VALUES (FoodID,food_name ,Price, details,status)
INSERT INTO Food_info VALUES (101,'pasta',302,'spicy ','available');
INSERT INTO Food_info VALUES (102,'burger',129,'yummy','available');
INSERT INTO Food_info VALUES (103,'Donuts',302,'flavorful ','available');
INSERT INTO Food_info VALUES (104,'Pizza',129,'yummy','available');
INSERT INTO Food_info VALUES (105,'Oreo Cookies',700,'savory','not available');
INSERT INTO Food_info VALUES (106,'Ice Cream',250,'spicy ','available');
INSERT INTO Food_info VALUES (107,'Potato Chips',50,'yummy','not available');
INSERT INTO Food_info VALUES (108,'French Fries',180,'flavorful','available');
INSERT INTO Food_info VALUES (109,'Soft Drinks',40,'cold','available');
INSERT INTO Food_info VALUES (110,'Ramen',700,'spicy','available');

--INSERT INTO order_detail VALUES (order_id,emp_id,cust_id,FOODID,Amount,ORDER_DATE);

INSERT INTO order_detail VALUES (51,2,15,105,5,'15-5-2023');
INSERT INTO order_detail VALUES (52,3,16,106,6,'14-5-2023');
INSERT INTO order_detail VALUES (53,2,17,104,4,'13-5-2023');
INSERT INTO order_detail VALUES (54,1,18,105,2,'18-5-2023');
INSERT INTO order_detail VALUES (55,5,19,109,8,'15-5-2023');
INSERT INTO order_detail VALUES (56,1,18,108,4,'11-5-2023');
INSERT INTO order_detail VALUES (57,6,14,105,8,'12-5-2023');
INSERT INTO order_detail VALUES (58,8,14,107,4,'19-5-2023');
INSERT INTO order_detail VALUES (59,9,18,104,2,'20-5-2023');
INSERT INTO order_detail VALUES (60,5,12,106,9,'02-5-2023');


--INSERT INTO transaction VALUES (TRANS_ID,TRANS_DATE,order_id,emp_id,cust_id);
INSERT INTO transaction VALUES (61,'15-5-2023',51,2,15);
INSERT INTO transaction VALUES (62,'14-5-2023',52,3,16);
INSERT INTO transaction VALUES (63,'13-5-2023',53,2,17);
INSERT INTO transaction VALUES (64,'18-5-2023',54,1,18);
INSERT INTO transaction VALUES (65,'15-5-2023',55,5,19);
INSERT INTO transaction VALUES (66,'11-5-2023',56,1,18);
INSERT INTO transaction VALUES (67,'12-5-2023',57,6,14);
INSERT INTO transaction VALUES (68,'19-5-2023',58,8,14);
INSERT INTO transaction VALUES (69,'20-5-2023',59,9,18);
INSERT INTO transaction VALUES (70,'02-5-2023',60,5,12);

--INSERT INTO delivary VALUES (DELIVARY_ID,ORDER_ID,DELIVARY_DATE);
INSERT INTO delivary VALUES (71,60,'30-5-2023');
INSERT INTO delivary VALUES (72,59,'29-5-2023');
INSERT INTO delivary VALUES (73,58,'28-5-2023');
INSERT INTO delivary VALUES (74,57,'27-5-2023');
INSERT INTO delivary VALUES (75,56,'26-5-2023');
INSERT INTO delivary VALUES (76,55,'25-5-2023');
INSERT INTO delivary VALUES (77,54,'24-5-2023');
INSERT INTO delivary VALUES (78,53,'23-5-2023');
INSERT INTO delivary VALUES (79,52,'22-5-2023');
INSERT INTO delivary VALUES (80,51,'21-5-2023');


--INSERT INTO Payment VALUES (Pay_ID,DELIVARY_ID,ORDER_ID,CUST_ID,Amount,Pay_DATE);
INSERT INTO Payment VALUES (81,71,60,12,9,'30-5-2023');
INSERT INTO payment VALUES (82,72,59,18,2,'29-5-2023');
INSERT INTO payment VALUES (83,73,58,14,4,'28-5-2023');
INSERT INTO payment VALUES (84,74,57,14,8,'27-5-2023');
INSERT INTO payment VALUES (85,75,56,18,4,'26-5-2023');
INSERT INTO payment VALUES (86,76,55,19,8,'25-5-2023');
INSERT INTO payment VALUES (87,77,54,18,2,'24-5-2023');
INSERT INTO payment VALUES (88,78,53,17,4,'23-5-2023');
INSERT INTO payment VALUES (89,79,52,16,6,'22-5-2023');
INSERT INTO payment VALUES (90,80,51,15,5,'21-5-2023');



----< Data Update >----
-- changing employee address

update employee
set address='80-bashab'
where employee.Emp_ID=0;

select * from employee;

----< Data Delete >----
-- if we want to sack any employee
--DELETE FROM employee 
--WHERE Emp_ID = 3;


select price from food_info;
select distinct(cust_id) from order_detail;


--divide Price by 2 where price>=300;
SELECT (price/2) FROM food_info
WHERE price>=300;

--USING 'AS'
SELECT (price/2) AS REDUCED_price FROM food_info
WHERE price>=300;

--USING BETWEEN ,AND
SELECT price FROM food_info
WHERE price BETWEEN 100 AND 400;


--DIFF OF 'IN'  AND 'BETWEEN'
SELECT Food_name,price FROM food_info
WHERE price IN (302,129);
--order by
SELECT price
FROM food_info
ORDER BY price;


SELECT cust_name,Cust_ID
FROM CUSTOMER
ORDER BY Cust_ID DESC;



--like %---%
SELECT cust_name, Cust_ID
FROM CUSTOMER
where cust_name LIKE '%nn%';

--FIND ACC WHICH HAS NAME STARTED WITH M
SELECT cust_name, Cust_ID
FROM CUSTOMER
where cust_name LIKE 'M%';

--FIND ACC WHICH HAS NAME ENDS WITH ne
SELECT cust_name, Cust_ID
FROM CUSTOMER
where cust_name LIKE '%ne';

--FIND ACC WHICH HAS NAME WITH 'A' IN MIDDLE
SELECT cust_name, Cust_ID
FROM CUSTOMER
where cust_name LIKE '%_a_%';

---<Aggregate function>---
select * from customer;

SELECT COUNT(*) FROM CUSTOMER;

SELECT SUM(price) FROM food_info;

SELECT SUM(DISTINCT price) FROM food_info;

--one Customer has multiple order in order table
SELECT COUNT(foodID) as Numbers ,cust_id
FROM Order_detail
GROUP BY cust_id;

---NUMBER OF SAME AMOUNT OF price IN food_info TABLE
SELECT price, COUNT(*)
FROM food_info
GROUP BY price
HAVING price<400;




--STatus of food_name which are available nested query
SELECT food_name,price
FROM  food_info
WHERE foodid IN (
    SELECT foodid
    FROM food_info
    WHERE status='available'
);
-- CUSTOMERS WHO HAS paid 0R DIDNT paid
SELECT Cust_ID 
FROM PAYMENT
UNION ALL
SELECT Cust_ID  
FROM order_detail;

--INTERSECT (CUSTOMER NAME WHO HAS ordered AND  amount>2)

SELECT CUST_Name
FROM CUSTOMER NATURAL JOIN PAYMENT
INTERSECT 
SELECT CUST_Name
FROM CUSTOMER 
WHERE Cust_ID IN (
    SELECT Cust_id
    FROM order_detail
    WHERE amount>2
);
------minus
-- Customers with order less than 100taka
select cust_name from customer
natural join order_detail
minus
select cust_name from customer
where cust_id IN(select cust_id from order_detail 
where foodid In(select foodid from food_info where price>=100));




--name who order maximum type
select cust_name from customer where cust_id=(select cust_id from order_detail group by cust_id having count(*)=
(select max(cnt)  from(
SELECT count(*) as cnt ,cust_id
FROM order_detail
group by cust_id)));






-- Inner Join
select d.cust_id, d.cust_name, p.pay_id,p.amount from customer d inner join
payment p on d.cust_id = p.cust_id;

-- food price less than some price

select price ,food_name from food_info
where price < some(select price from food_info);

-- food price less than avg price

select price,food_name from food_info
where price< (select avg(price) from food_info );

--customer paid at 24-5-2023


select cust_name from customer 
where cust_id=(select cust_id from payment where Pay_DATE = '24-5-2023');


