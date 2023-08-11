@echo off
color 1f
cls
echo.
echo Did you add an H to the movie, after 1080p?
echo.
echo EXAMPLE: moon_h1080p.mov
echo.
pause
cd "%userprofile%\desktop"

wget -nd -t 0 -T 15 "%1" -U "QuickTime/7.6 (qtver=7.6;os=Windows NT 6.0Service Pack 1)" --header "Host: movies.apple.com"

color 3f
cls
echo.
echo Done!
echo.
pause
exit