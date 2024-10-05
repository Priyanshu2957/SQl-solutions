cl scr
SET PAGESIZE 50;

SET LINESIZE 200;
drop table customer;
CREATE TABLE
    customer (
        cust_id NUMBER (3) PRIMARY KEY,
        cust_fname VARCHAR(20) NOT NULL,
        cust_lname VARCHAR(20) NOT NULL,
        territory VARCHAR(20),
        cred_lmt NUMBER (10, 2),
        mngr_id NUMBER (1),
        marital_status VARCHAR(10),
        sex CHAR(1),
        income NUMBER (15, 2)
    );

    @cust.sql
alter table customer add stay_from_year number(4);
update customer set stay_from_year = case when territory in ('Italy','America') then 2001 else 2003 end;
