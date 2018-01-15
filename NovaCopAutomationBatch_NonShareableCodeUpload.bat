for %%i in ("%~dp0..") do set "folder=%%~fi"
cd %folder%


rd .\NovaCopAutomation\SfSourceCode\pages /s /q 
rd .\NovaCopAutomation\SfSourceCode\classes /s /q 
rd .\NovaCopAutomation\SfSourceCode\triggers /s /q 
del .\NovaCopAutomation\output\*.* /s /q 
rd .\NovaCopAutomation\output\violation /s /q
rd .\NovaCopAutomation\output\cyclomatricComplexity /s /q
move .\Deploy\dist\pages .\NovaCopAutomation\SfSourceCode
move .\Deploy\dist\triggers .\NovaCopAutomation\SfSourceCode
move .\Deploy\dist\classes .\NovaCopAutomation\SfSourceCode

cd NovaCopAutomation

set currentDir=%cd%
set maxqualityscore=4
set CLASSPATH=%currentDir%\lib\NovaCopAutomation.jar;%currentDir%\lib\*
set java_home=%currentDir%\jre7



%java_home%\bin\java -Xms512m -Xmx1024m com.atl.nova.trap.NovaCopAutomation.NovaCopAutomationProcessController %currentDir% %maxqualityscore%


%java_home%\bin\java -Xms512m -Xmx1024m com.atl.novacop.report.util.Callexportreport %currentDir% %BUILD_NUMBER%


pause