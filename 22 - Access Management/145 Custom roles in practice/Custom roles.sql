USE ROLE SALES_ADMIN;
USE SALES_DATABASE;

-- Create table --
create or replace table customers(
  id number,
  full_name varchar, 
  email varchar,
  phone varchar,
  spent number,
  create_date DATE DEFAULT CURRENT_DATE);

-- insert values in table --
insert into customers (id, full_name, email,phone,spent)
values
  (1,'Lewiss MacDwyer','lmacdwyer0@un.org','262-665-9168',140),
  (2,'Ty Pettingall','tpettingall1@mayoclinic.com','734-987-7120',254),
  (3,'Marlee Spadazzi','mspadazzi2@txnews.com','867-946-3659',120),
  (4,'Heywood Tearney','htearney3@patch.com','563-853-8192',1230),
  (5,'Odilia Seti','oseti4@globo.com','730-451-8637',143),
  (6,'Meggie Washtell','mwashtell5@rediff.com','568-896-6138',600);
  
SHOW TABLES;

-- query from table --
SELECT* FROM CUSTOMERS;
USE ROLE SALES_USERS;

-- grant usage to role
USE ROLE SALES_ADMIN;

GRANT USAGE ON DATABASE SALES_DATABASE TO ROLE SALES_USERS;
GRANT USAGE ON SCHEMA SALES_DATABASE.PUBLIC TO ROLE SALES_USERS;
GRANT SELECT ON TABLE SALES_DATABASE.PUBLIC.CUSTOMERS TO ROLE SALES_USERS


-- Validate privileges --
USE ROLE SALES_USERS;
SELECT* FROM CUSTOMERS;
DROP TABLE CUSTOMERS;
DELETE FROM CUSTOMERS;
SHOW TABLES;

-- grant DROP on table
USE ROLE SALES_ADMIN;
GRANT DELETE ON TABLE SALES_DATABASE.PUBLIC.CUSTOMERS TO ROLE SALES_USERS


USE ROLE SALES_ADMIN;