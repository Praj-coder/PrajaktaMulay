CREATE TABLESPACE tbs1 DATAFILE 'tbs1_data.dbf' size 330M AUTOEXTEND ON NEXT 1048K MAXSIZE UNLIMITED;

create user onlinestoredb identified by 1234 Default tablespace tbs1;

GRANT ALL PRIVILEGES TO onlinestoredb;

