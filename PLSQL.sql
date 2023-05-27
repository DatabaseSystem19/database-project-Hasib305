set serveroutput on
declare 
cust_id CUSTOMER.cust_id%type;
cust_name customer.cust_NAME%type;

begin
select cust_id,cust_name into cust_id,cust_name from customer where cust_id=11;
dbms_output.put_line('cust_id: '||cust_id|| ' cust_name: '||cust_name );
end;


--Cursor and row count---

set serveroutput on
declare 
cursor food_cursor is select * from food_info;
food_row food_info%rowtype;
begin
open food_cursor;
fetch food_cursor into food_row.foodid,food_row.food_name,food_row.price,food_row.details,food_row.status;
while food_cursor%found loop
dbms_output.put_line('food_id: '||food_row.foodid|| ' food_name: '||food_row.food_name || ' price: ' ||food_row.price);
dbms_output.put_line('Row count: '|| food_cursor%rowcount);
fetch food_cursor into food_row.foodid,food_row.food_name,food_row.price,food_row.details,food_row.status;
end loop;
close food_cursor;
end;


--for loop while loop array---

set serveroutput on
declare 
  counter number;
  name food_info.food_name%type;
  TYPE NAMEARRAY IS VARRAY(6) OF FOOD_INFO.FOOD_NAME%type; 
  a NAMEARRAY:=NAMEARRAY();
begin
  counter:=1;
  for x in 101..106  
  loop
    select food_name into name from food_info where foodid = x;
   a.EXTEND();
    a(counter):=name;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=a.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(a(counter)); 
    counter:=counter+1;
  END LOOP;
end;

/

----If Else---
--if price<=100 => low price ,,, <=200 medium price ,,else high price
set serveroutput on
declare 
  counter number;
  pricee food_info.price%type;
  food FOOD_INFO.FOOD_NAME%type;
  TYPE NAMEARRAY IS VARRAY(10) OF FOOD_INFO.price%type; 
  a NAMEARRAY:=NAMEARRAY();
begin
  counter:=1;
  for x in 101..110
  loop
    select price into pricee from food_info where foodid = x;
   a.EXTEND();
    a(counter):=pricee;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=a.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(a(counter)); 
            select food_name into food from food_info where foodid = 100+counter;
   if a(counter)<=100
        then

        dbms_output.put_line(food ||'is Low priced');
        elsif  a(counter)<=200
        then

        dbms_output.put_line(food ||'is Medium priced');
        else
        
     dbms_output.put_line(food ||'is high priced');
        end if;
    counter:=counter+1;
  END LOOP;
end;
/


--<show customer and order date>---
CREATE OR REPLACE PROCEDURE custommer(
  var1 IN varchar,
  var2 OUT VARCHAR2
)
AS

BEGIN
  
  SELECT cust_name INTO var2 FROM customer WHERE cust_id IN (SELECT cust_id FROM order_detail WHERE order_date = var1);

  DBMS_OUTPUT.PUT_LINE('customer name :' || var2 || ' order_date : ' || var1 );
END;
/


declare 
order_date order_detail.order_date%type:='20-5-2023';
cust_name customer.cust_name%type;

begin
custommer(order_date,cust_name);
end;
/

---<function to show amount in order date>--

set serveroutput on
create or replace function amountt(var1 in varchar) return number AS
value order_detail.amount%type;
begin
  select amount into value from ORDER_DETAIL where order_date=var1; 
   return value;
end;
/
set serveroutput on
declare 
value varchar(20);
begin
value:=amountt('20-5-2023');
DBMS_OUTPUT.PUT_LINE('amount:' || value || ' order_date : ' || '20-5-2023');
end;
/

