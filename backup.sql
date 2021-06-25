begin
  for tables in (select table_name from all_tables where owner = 'ONLINESTOREDB') loop
    execute immediate
      'create table onlinestoredb.bkp_'||tables.table_name||' as select * from onlinestoredb.'||tables.table_name ;
end loop;
end ;
