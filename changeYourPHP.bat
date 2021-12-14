@echo off
set php-5.6.0=D:\DevelopTools\php-5.6.0
set php-7.0.0=D:\DevelopTools\php-7.0.0
set php-8.0.11=D:\DevelopTools\php-8.0.11
net session 1>nul 2>nul && (goto admin) || (goto user)

:admin
echo Your PHP version now:
php --version
echo.
echo choose php version
echo 0 for cancel
echo 1 for php-5.6.0 in %php-5.6.0%
echo 2 for php-7.0.0 in %php-7.0.0%
echo 3 for php-8.0.11 in %php-8.0.11%
set /p v=input:
goto select
goto endl

:select
if %v%==0 (
	goto end
)else if %v%==1 (
	echo use %php-5.6.0%
	setx PHP_HOME %php-5.6.0%
	setx PHP_HOME %php-5.6.0% /M
)else if %v%==2 (
	echo use %php-7.0.0%
	setx PHP_HOME %php-7.0.0%
	setx PHP_HOME %php-7.0.0% /M
)else if %v%==3 (
	echo use %php-8.0.11%
	setx PHP_HOME %php-8.0.11%
	setx PHP_HOME %php-8.0.11% /M
)else ( 
	echo wrong input
	goto admin
)
goto end

:user
echo please use as admin
goto end

:end
pause