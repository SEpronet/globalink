@echo off
echo DATABASE WILL BE ERASED!
pause >nul

rake db:drop
rake db:create
rake db:migrate

pause >nul