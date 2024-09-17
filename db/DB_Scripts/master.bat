@echo off

REM Define variables
set hostname=127.0.0.1
set username=postgres
set database_name=channeling
set port=5432
set sql_file_path=%~dp0../DB_Scripts/master.sql
set PGPASSWORD=pass@123

echo "Executing SQL commands on %database_name% database..."
echo Current Directory:
cd

psql -h %hostname% -p %port% -U %username% -d %database_name% -f %sql_file_path%
set PGPASSWORD=

echo "SQL commands executed successfully on %database_name% database."
