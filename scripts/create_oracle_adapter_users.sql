alter database default tablespace USERS;

CREATE USER oracle_adapter IDENTIFIED BY oracle_adapter;

GRANT unlimited tablespace, create session, create table, create sequence,
create procedure, create trigger, create view, create materialized view,
create database link, create synonym, create type, ctxapp TO oracle_adapter;

CREATE USER oracle_adapter_schema IDENTIFIED BY oracle_adapter_schema;

GRANT unlimited tablespace, create session, create table, create sequence,
create procedure, create trigger, create view, create materialized view,
create database link, create synonym, create type, ctxapp TO oracle_adapter_schema;

CREATE USER arunit IDENTIFIED BY arunit;

GRANT unlimited tablespace, create session, create table, create sequence,
create procedure, create trigger, create view, create materialized view,
create database link, create synonym, create type, ctxapp TO arunit;

CREATE USER arunit2 IDENTIFIED BY arunit2;

GRANT unlimited tablespace, create session, create table, create sequence,
create procedure, create trigger, create view, create materialized view,
create database link, create synonym, create type, ctxapp TO arunit2;

CREATE USER ruby IDENTIFIED BY oci8;
GRANT connect, resource, create view,create synonym TO ruby;
GRANT EXECUTE ON dbms_lock TO ruby;
GRANT CREATE VIEW TO ruby;
GRANT unlimited tablespace to ruby;
