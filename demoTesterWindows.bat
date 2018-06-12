@echo off
@echo path of demo        error level (0 success) > testResults.txt

for /r %%f in (*.cc3d) do ( 
	call .\runScript.bat -i %%f --noOutput -f 100000000000 --exitWhenDone &\
	@echo %%f                   %ERRORLEVEL% >> testResults.txt
)
exit /b