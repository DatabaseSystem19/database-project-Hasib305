CREATE OR REPLACE TRIGGER trg_insert_employee_customer
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Customer (Cust_ID, cust_name, Phone, USER_NAME, PASS, CUST_ADDRESS)
    VALUES (:NEW.Emp_ID, :NEW.Name, :NEW.Contact, :NEW.User_Name, :NEW.Pass, :NEW.Address);
END;

INSERT INTO Employee VALUES (30, 'Rock', '0171043810','ro10','100','90haka');

select * from employee;
select * from customer;