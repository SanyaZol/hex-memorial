@ECHO OFF
set gmlan=\\192.168.0.7\root\GMod\Map
del %temp%\oops.txt
del %temp%\oops2.txt
color 1f
title MFSiNC's Map Changer :D

:start
cls
echo.
echo MFSiNC's Map Changer :D
echo.
echo -------------------------
echo [0] Clear / Do not start
echo -------------------------
echo.
echo [A] gm_construct
echo [B] gm_flatgrass
echo [C] wal-mart_v5
echo [D] cs_office
echo [E] cs_office_unlimited_oc
echo [F] cs_assault
echo [G] cs_office_extended
echo [H] wal-mart_v6_beta
echo.
echo.
set /p choice="> "
set choice=%choice:~0,1%
if "%choice%"=="0" goto 0
if "%choice%"=="a" goto a
if "%choice%"=="b" goto b
if "%choice%"=="c" goto c
if "%choice%"=="d" goto d
if "%choice%"=="e" goto e
if "%choice%"=="f" goto f
if "%choice%"=="g" goto g
if "%choice%"=="h" goto h
if exist %temp%\oops.txt goto oops2
if exist %temp%\oops2.txt goto enter
goto oops

:oops
echo oops >>%temp%\oops.txt
echo No, try again
sleep.exe 1
goto start

:oops2
del %temp%\oops.txt
echo oops2 >>%temp%\oops2.txt
echo *REALY* try this time :(
sleep.exe 2
goto start

:enter
cls
echo.
echo Fuck You.
echo.
echo                      "/"\"
echo                     "|\./|"
echo                     "|   |"
echo                     "|   |"
echo                     "|>~<|"
echo                     "|   |"
echo                  "/'\|   |/'\.."
echo              "/~\|   |   |   | \"
echo             "|   =[@]=   |   |  \"
echo             "|   |   |   |   |   \"
echo             "| ~   ~   ~   ~ |`   )"
echo             "|                   /"
echo              "\                 /"
echo               "\               /"
echo                "\    _____    /"
echo                 "|--//''`\--|"
echo                 "| (( +==)) |"
echo                 "|--\_|_//--|"
sleep 1
goto exit

:0
rmdir /S /Q "%gmlan%"
cls
echo.
echo Selected: nothing :(
echo closing...
sleep 1
exit

:a
rmdir /S /Q "%gmlan%"
mkdir %gmlan%\gm_construct
cls
echo.
echo Selected: gm_construct
echo closing...
sleep 1
exit

:b
rmdir /S /Q "%gmlan%"
mkdir %gmlan%\gm_flatgrass
cls
echo.
echo Selected: gm_flatgrass
echo closing...
sleep 1
exit

:c
rmdir /S /Q "%gmlan%"
mkdir %gmlan%\wal-mart_v5
cls
echo.
echo Selected: wal-mart_v5
echo closing...
sleep 1
exit

:d
rmdir /S /Q "%gmlan%"
mkdir %gmlan%\cs_office
cls
echo.
echo Selected: cs_office
echo closing...
sleep 1
exit

:e
rmdir /S /Q "%gmlan%"
mkdir %gmlan%\cs_office_unlimited_oc
cls
echo.
echo Selected: cs_office_unlimited_oc
echo closing...
sleep 1
exit

:f
rmdir /S /Q "%gmlan%"
mkdir %gmlan%\cs_assault
cls
echo.
echo Selected: cs_assault
echo closing...
sleep 1
exit

:g
rmdir /S /Q "%gmlan%"
mkdir %gmlan%\cs_office_extended
cls
echo.
echo Selected: cs_office_extended
echo closing...
sleep 1
exit

:h
rmdir /S /Q "%gmlan%"
mkdir %gmlan%\wal-mart_v6_beta
cls
echo.
echo Selected: wal-mart_v6_beta
echo closing...
sleep 1
exit

:exit
del %temp%\oops.txt
del %temp%\oops2.txt
