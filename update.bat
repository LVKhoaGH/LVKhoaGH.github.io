@echo off
color 0A
echo ===================================================
echo     GITHUB AUTO DEPLOY SCRIPT - NETWORK ENGINEER   
echo ===================================================
echo.

:: Lay thoi gian hien tai cua he thong Windows
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "TIMESTAMP=Update_%DD%/%MM%/%YYYY%_%HH%:%Min%"

echo [INFO] Dang kiem tra thay doi (git add .)...
git add .

echo [INFO] Dang luu phien ban (git commit)...
git commit -m "%TIMESTAMP%"

echo [INFO] Dang day len Server (git push)...
git push

echo.
echo ===================================================
echo [SUCCESS] DA CAP NHAT THANH CONG LEN GITHUB!
echo ===================================================
pause