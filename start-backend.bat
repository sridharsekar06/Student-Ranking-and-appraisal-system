@echo off
setlocal

echo Starting Student Ranking Appraisal System Backend...

rem Move to backend directory next to this script
cd /d "%~dp0backend"
if errorlevel 1 goto cd_error

rem Set TESSDATA_PREFIX for Tesseract OCR
set TESSDATA_PREFIX=%~dp0tessdata

rem Prefer Maven Wrapper if available
if exist mvnw.cmd goto use_maven_wrapper

rem Check for system Maven
where mvn >nul 2>&1
if errorlevel 1 goto missing_maven

echo Using system Maven...
mvn spring-boot:run -DskipTests
goto end

:use_maven_wrapper
echo Using Maven Wrapper...
call mvnw.cmd spring-boot:run -DskipTests
goto end

:missing_maven
echo ERROR: Maven not found on PATH.
echo Install Maven or use the Maven Wrapper (run 'mvn -N io.takari:maven:wrapper').
pause
exit /b 1

:cd_error
echo ERROR: Could not change directory to backend. Ensure the 'backend' folder exists next to this script.
pause
exit /b 1

:end
endlocal
