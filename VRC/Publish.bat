@ECHO OFF
FOR %%i IN (*.*) DO (
ECHO "%%i" | FIND /I "Publish.bat" 1>NUL) || (
"c:\Program Files\7-Zip\7z.exe" a -tzip "%%~ni.zip" "%%i"
)
) 