
CREATE TABLE onlinestoredb.regions (
    region_id    NUMBER,
    region_name  VARCHAR2(100)
);

CREATE TABLE onlinestoredb.countries (
    region        VARCHAR2(100),
    country_name  VARCHAR2(100),
    country_id    NUMBER
);

CREATE TABLE onlinestoredb.locations (
    locationid   VARCHAR2(10),
    address      VARCHAR2(100),
    postal_code  NUMBER,
    city         VARCHAR2(100),
    state        VARCHAR2(100),
    country      VARCHAR2(100)
);

CREATE TABLE onlinestoredb.warehouses (
    warehouseid    VARCHAR2(10),
    warehousename  VARCHAR2(100),
    location       VARCHAR2(100)
);

CREATE TABLE onlinestoredb.employees (
    employeeid   VARCHAR2(10),
    firstname    VARCHAR2(100),
    lastname     VARCHAR2(100),
    email        VARCHAR2(100),
    phone        NUMBER,
    hiredate     DATE,
    dob          DATE,
    salary       NUMBER,
    manager      VARCHAR2(20),
    designation  VARCHAR2(100),
    department   VARCHAR2(100)
);

CREATE TABLE onlinestoredb.product_category (
    categoryid    VARCHAR2(10),
    categoryname  VARCHAR2(100)
);

CREATE TABLE onlinestoredb.products (
    productid     VARCHAR2(10),
    productname   VARCHAR2(100),
    description   VARCHAR2(100),
    standardcost  NUMBER,
    listprice     NUMBER,
    category      VARCHAR2(100)
);

CREATE TABLE onlinestoredb.customers (
    customerid  VARCHAR2(10),
    name        VARCHAR2(100),
    address     VARCHAR2(100),
    website     VARCHAR2(100),
    facebook    VARCHAR2(100),
    twitter     VARCHAR2(100),
    whatsapp    NUMBER
);

CREATE TABLE onlinestoredb.contacts (
    contactid   VARCHAR2(10),
    firstname   VARCHAR2(100),
    lastname    VARCHAR2(100),
    email       VARCHAR2(100),
    phone       NUMBER,
    customerid  NUMBER
);

CREATE TABLE onlinestoredb.orders (
    orderid     VARCHAR2(10),
    customerid  VARCHAR2(10),
    status      VARCHAR2(100),
    salesmanid  NUMBER,
    orderdate   DATE
);

CREATE TABLE onlinestoredb.order_items (
    orderid                VARCHAR2(10),
    itemid                 VARCHAR2(10),
    productid              VARCHAR2(10),
    quantity               NUMBER,
    unitprice              NUMBER,
    inventories_productid  VARCHAR2(10),
    warehouseid            VARCHAR2(10)
);

CREATE TABLE onlinestoredb.department (
    deptid          VARCHAR2(10),
    departmentname  VARCHAR2(100),
    location        VARCHAR2(100)
);


   
alter table onlinestoredb.regions add constraint region_id_p primary key(region_id);

alter table onlinestoredb.countries add constraint country_id_p primary key(country_id);

alter table onlinestoredb.locations add constraint locationid_p primary key(locationid);
 
alter table onlinestoredb.warehouses add constraint warehouseid_p primary key(warehouseid);

alter table onlinestoredb.warehouses add constraint fk_warehouses foreign key (location) references onlinestoredb.locations(locationid) on delete cascade;

alter table onlinestoredb.Employees add constraint employeeid_p primary key(employeeid);

alter table onlinestoredb.Product_category add constraint categoryid_p primary key(categoryid);

alter table onlinestoredb.Products add constraint productid_p primary key(productid);
  
alter table onlinestoredb.Customers add constraint customerid_p primary key(customerid);

alter table onlinestoredb.Contacts add constraint contactid_p primary key(contactid);

alter table onlinestoredb.Orders add constraint orderid_p primary key(orderid);
 
alter table onlinestoredb.Order_items add constraint orderid_items primary key(orderid);

alter table onlinestoredb.Order_items add constraint fk_Order_items foreign key (orderid) references onlinestoredb.Orders(orderid) on delete cascade;

alter table onlinestoredb.Department add constraint deptid_p primary key(deptid);


create table audits (table_name  varchar2(20), transaction_name varchar2(100), by_user varchar2(100), transaction_date date);


CREATE OR REPLACE TRIGGER customers_audit_trg
    AFTER 
    UPDATE OR DELETE 
    ON customers
    FOR EACH ROW    
DECLARE
   l_transaction VARCHAR2(10);
BEGIN
   -- determine the transaction type
   l_transaction := CASE  
         WHEN UPDATING THEN 'UPDATE'
         WHEN DELETING THEN 'DELETE'
   END;

   -- insert a row into the audit table   
   INSERT INTO audits (table_name, transaction_name, by_user, transaction_date)
   VALUES('CUSTOMERS', l_transaction, USER, SYSDATE);
END;
