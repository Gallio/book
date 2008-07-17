@if defined ECHO (echo %ECHO%) else (echo off)
REM
REM Runs the build.
REM
"%~dp0tools\MetaBuild\bin\MetaBuild.bat" /sourcedir "%~dp0" %*
