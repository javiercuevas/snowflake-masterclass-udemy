-- SECURITYADMIN role --
--  Create and Manage Roles & Users --


-- Create Sales Roles & Users for SALES--

create role sales_admin;
create role sales_users;

-- Create hierarchy
grant role sales_users to role sales_admin;

-- As per best practice assign roles to SYSADMIN
grant role sales_admin to role SYSADMIN;


-- create sales user
CREATE USER simon_sales PASSWORD = '123' DEFAULT_ROLE =  sales_users 
MUST_CHANGE_PASSWORD = TRUE;
GRANT ROLE sales_users TO USER simon_sales;

-- create user for sales administration
CREATE USER olivia_sales_admin PASSWORD = '123' DEFAULT_ROLE =  sales_admin
MUST_CHANGE_PASSWORD = TRUE;
GRANT ROLE sales_admin TO USER  olivia_sales_admin;

-----------------------------------

-- Create Sales Roles & Users for HR--

create role hr_admin;
create role hr_users;

-- Create hierarchy
grant role hr_users to role hr_admin;

-- This time we will not assign roles to SYSADMIN (against best practice)
-- grant role hr_admin to role SYSADMIN;


-- create hr user
CREATE USER oliver_hr PASSWORD = '123' DEFAULT_ROLE =  hr_users 
MUST_CHANGE_PASSWORD = TRUE;
GRANT ROLE hr_users TO USER oliver_hr;

-- create user for sales administration
CREATE USER mike_hr_admin PASSWORD = '123' DEFAULT_ROLE =  hr_admin
MUST_CHANGE_PASSWORD = TRUE;
GRANT ROLE hr_admin TO USER mike_hr_admin;
