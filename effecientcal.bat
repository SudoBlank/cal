@echo off
set /p num="Enter first number: "
set /p operation="Enter operation (+, -, *, /): "
set /p num2="Enter second number: "

if "%operation%"=="/" if "%num2%"=="0" (
    echo Cannot divide by zero
    goto :eof
)

set /a result=%num%%operation%%num2% 2>nul

if errorlevel 1 (
    echo Invalid operation
) else (
    echo Result: %result%
)