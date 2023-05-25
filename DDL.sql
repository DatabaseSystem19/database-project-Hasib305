--DROP TABLE Payment ;
--DROP TABLE delivary ;
--DROP TABLE transaction ;
--DROP TABLE order_detail ;
--DROP TABLE food_info ;
--DROP TABLE Customer ;
--DROP TABLE Employee;


----< Create tables >----
Create table Employee(
 	Emp_ID number(20) NOT NULL,
 	Name varchar(15),
 	Contact varchar(20),
    User_Name varchar(20),
    Pass varchar(20),
    Address varchar(20),
 	PRIMARY KEY (Emp_ID)
 );

Create table Customer(
     Cust_ID Number (20) Not Null,
	cust_name varchar(22),
	Phone varchar(14),
    
    USER_NAME varchar(20),
    PASS varchar(20),
    CUST_ADDRESS varchar(20),
	PRIMARY KEY(Cust_id)
    );
 

Create table food_info(
   FOODID number(5) NOT NULL,
      FOOD_NAME varchar(12),
    Price number check(price>0) not null,
	DETAILS varchar(20),
	STATUS varchar(20),
	PRIMARY KEY (FOODID)
   );
Create table order_detail(
    ORDER_ID number(20) NOT NULL,
    EMP_ID number(20),
    CUST_ID number(20),
    FOODID number(5),
    Amount number check(amount>0),
    ORDER_DATE varchar(10),
PRIMARY KEY(ORDER_ID),
FOREIGN KEY (Cust_id) References Customer(Cust_id) ON DELETE CASCADE,
FOREIGN KEY (EMP_ID) References Employee(EMP_ID) ON DELETE CASCADE,
FOREIGN KEY (FOODID) References food_info(FOODID) ON DELETE CASCADE

);


Create table transaction(
    TRANS_ID Number (20) Not Null,
    TRANS_DATE varchar(10),
    ORDER_ID number(20),
    EMP_ID number(20),
    CUST_ID number(20),
    PRIMARY KEY(TRANS_ID),
FOREIGN KEY (Cust_id) References Customer(Cust_id) ON DELETE CASCADE,
FOREIGN KEY (EMP_ID) References Employee(EMP_ID) ON DELETE CASCADE,
FOREIGN KEY (ORDER_ID) References order_detail(ORDER_ID) ON DELETE CASCADE

);


Create table delivary(
   DELIVARY_ID Number (20) Not Null, 
   ORDER_ID number(20),
   DELIVARY_DATE varchar(10),
   PRIMARY KEY(DELIVARY_ID),
   FOREIGN KEY (ORDER_ID) References order_detail(ORDER_ID) ON DELETE CASCADE
   );
   
 
Create table Payment(
    Pay_ID Number (20) Not Null,
    DELIVARY_ID Number (20),
    ORDER_ID number(20),
    CUST_ID number(20),
    Amount number check(amount>0),
    Pay_DATE varchar(10),
    FOREIGN KEY (ORDER_ID) References order_detail(ORDER_ID) ON DELETE CASCADE,
    FOREIGN KEY (Cust_id) References Customer(Cust_id) ON DELETE CASCADE,
    FOREIGN KEY (DELIVARY_ID) References delivary(DELIVARY_ID) ON DELETE CASCADE,
PRIMARY KEY(Pay_ID)
    );
   
   ----< Describe Table >----
DESCRIBE CUSTOMER ;
DESCRIBE DELIVARY ;
DESCRIBE EMPLOYEE ;
DESCRIBE FOOD_INFO ;
DESCRIBE ORDER_DETAIL ;
DESCRIBE PAYMENT ;
DESCRIBE TRANSACTION ;

ALTER TABLE CUSTOMER
ADD (LOCATION VARCHAR(25),
REVIEW VARCHAR(3));

ALTER TABLE CUSTOMER
DROP COLUMN LOCATION;
ALTER TABLE CUSTOMER
DROP COLUMN REVIEW;

ALTER TABLE CUSTOMER 
RENAME COLUMN CUST_ADDRESS TO Customer_add;

ALTER TABLE customer 
RENAME COLUMN Customer_add TO CUST_ADDRESS;