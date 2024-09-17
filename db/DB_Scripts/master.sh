@echo off

REM Define variables
set hostname=127.0.0.1
set username=channeling_user
set database_name=channeling
set port=5432
set sql_file_path=../../DB_Scripts/Build_Scripts/master.sql

echo "Executing SQL commands on %database_name% database..."
echo Current Directory:
cd
psql -h %hostname% -p %port% -U %username% -d %database_name% -f %sql_file_path%
pause

