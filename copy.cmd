@echo off
set dir=tmp
set arq=teste.log

cls
mkdir \%dir%
cd \%dir%
fsutil file createnew teste.log 10737418240

FOR /L %%i IN (1,1,100) DO (
echo "Diretorio %%i"
mkdir %%i
echo "Copiando %arq% ==> %%i"
copy %arq% %%i > nul 2>&1
echo >nul
)

del %arq%
echo >nul
cd \


rem 1048576 => 1M / 1073741824 - 1G / 10737418240 - 10G / 107374182400 - 100G