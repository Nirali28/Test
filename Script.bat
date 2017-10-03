echo 'hjddsjhdsjcds'
for /f "tokens=* delims=" %%x in (Config.txt) do set name=%%x
echo %name%
if '%name%' == 'Nirali' (echo 'Good') else (echo 'bad')
pause