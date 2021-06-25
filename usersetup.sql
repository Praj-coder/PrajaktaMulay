create role admin;

grant ALL PRIVILEGES TO admin;


--create role with DML aceess

create role application_user;


grant select , insert,update,delete on onlinestoredb.COUNTRIES to application_user;
grant select , insert,update,delete on onlinestoredb.LOCATIONS to application_user;
grant select , insert,update,delete on onlinestoredb.WAREHOUSES to application_user;
grant select , insert,update,delete on onlinestoredb.EMPLOYEES to application_user;
grant select , insert,update,delete on onlinestoredb.PRODUCT_CATEGORY to application_user;
grant select , insert,update,delete on onlinestoredb.PRODUCTS to application_user;
grant select , insert,update,delete on onlinestoredb.CUSTOMERS to application_user;
grant select , insert,update,delete on onlinestoredb.CONTACTS to application_user;
grant select , insert,update,delete on onlinestoredb.ORDERS to application_user;
grant select , insert,update,delete on onlinestoredb.ORDER_ITEMS to application_user;
grant select , insert,update,delete on onlinestoredb.DEPARTMENT to application_user;
grant select , insert,update,delete on onlinestoredb.REGIONS to application_user;