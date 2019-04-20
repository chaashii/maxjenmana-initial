@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\xamp\hypersonic\scripts\ctl.bat (start /MIN /B E:\xamp\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\xamp\ingres\scripts\ctl.bat (start /MIN /B E:\xamp\ingres\scripts\ctl.bat START)
if exist E:\xamp\mysql\scripts\ctl.bat (start /MIN /B E:\xamp\mysql\scripts\ctl.bat START)
if exist E:\xamp\postgresql\scripts\ctl.bat (start /MIN /B E:\xamp\postgresql\scripts\ctl.bat START)
if exist E:\xamp\apache\scripts\ctl.bat (start /MIN /B E:\xamp\apache\scripts\ctl.bat START)
if exist E:\xamp\openoffice\scripts\ctl.bat (start /MIN /B E:\xamp\openoffice\scripts\ctl.bat START)
if exist E:\xamp\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\xamp\apache-tomcat\scripts\ctl.bat START)
if exist E:\xamp\resin\scripts\ctl.bat (start /MIN /B E:\xamp\resin\scripts\ctl.bat START)
if exist E:\xamp\jboss\scripts\ctl.bat (start /MIN /B E:\xamp\jboss\scripts\ctl.bat START)
if exist E:\xamp\jetty\scripts\ctl.bat (start /MIN /B E:\xamp\jetty\scripts\ctl.bat START)
if exist E:\xamp\subversion\scripts\ctl.bat (start /MIN /B E:\xamp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\xamp\lucene\scripts\ctl.bat (start /MIN /B E:\xamp\lucene\scripts\ctl.bat START)
if exist E:\xamp\third_application\scripts\ctl.bat (start /MIN /B E:\xamp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\xamp\third_application\scripts\ctl.bat (start /MIN /B E:\xamp\third_application\scripts\ctl.bat STOP)
if exist E:\xamp\lucene\scripts\ctl.bat (start /MIN /B E:\xamp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\xamp\subversion\scripts\ctl.bat (start /MIN /B E:\xamp\subversion\scripts\ctl.bat STOP)
if exist E:\xamp\jetty\scripts\ctl.bat (start /MIN /B E:\xamp\jetty\scripts\ctl.bat STOP)
if exist E:\xamp\hypersonic\scripts\ctl.bat (start /MIN /B E:\xamp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\xamp\jboss\scripts\ctl.bat (start /MIN /B E:\xamp\jboss\scripts\ctl.bat STOP)
if exist E:\xamp\resin\scripts\ctl.bat (start /MIN /B E:\xamp\resin\scripts\ctl.bat STOP)
if exist E:\xamp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\xamp\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\xamp\openoffice\scripts\ctl.bat (start /MIN /B E:\xamp\openoffice\scripts\ctl.bat STOP)
if exist E:\xamp\apache\scripts\ctl.bat (start /MIN /B E:\xamp\apache\scripts\ctl.bat STOP)
if exist E:\xamp\ingres\scripts\ctl.bat (start /MIN /B E:\xamp\ingres\scripts\ctl.bat STOP)
if exist E:\xamp\mysql\scripts\ctl.bat (start /MIN /B E:\xamp\mysql\scripts\ctl.bat STOP)
if exist E:\xamp\postgresql\scripts\ctl.bat (start /MIN /B E:\xamp\postgresql\scripts\ctl.bat STOP)

:end

