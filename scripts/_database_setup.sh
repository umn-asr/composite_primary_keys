#!/bin/bash

# script/_database_setup: sets up database users in test & dev and grants
# permissions.

set -e

cd "$(dirname "$0")/.."

echo "==> Creating Database Users"


set -ev

sqlplus sys/Oradoc_db1@//database:1521/ORCLPDB1 as sysdba << SQL
@@scripts/alter_system_user_password.sql
@@scripts/alter_system_set_open_cursors.sql
@@scripts/create_oracle_adapter_users.sql
exit
SQL
