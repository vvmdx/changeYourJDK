@echo off
set jdk11=D:\DevelopTools\Java\jdk11.0.3
set jdk8=D:\DevelopTools\Java\jdk1.8.0_291
net session 1>nul 2>nul && (goto admin) || (goto user)


:admin
echo Your jdk version now:
java -version
echo.
echo choose jdk version
echo 0 for cancel
echo 1 for jdk8 in %jdk8%
echo 2 for jdk11 in %jdk11%
set /p v=input:
goto select
goto end

:select
if %v%==0 (
	goto end
)else if %v%==1 (
	echo use %jdk8%
	setx JAVA_HOME %jdk8%
	setx JAVA_HOME %jdk8% /M
)else if %v%==2 (
	echo use %jdk11%
	setx JAVA_HOME %jdk11%
	setx JAVA_HOME %jdk11% /M
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
