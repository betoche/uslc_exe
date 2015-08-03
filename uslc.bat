@echo off
setLocal EnableDelayedExpansion
set CLASSPATH="
for /R ./classpath %%a in (*.jar) do (
  set CLASSPATH=%%a;!CLASSPATH!
)
set CLASSPATH=!CLASSPATH!"
echo %CLASSPATH%

%JAVA_HOME%\bin\java -cp "%CLASSPATH%" -jar ./classpath/uslc_gui.jar com.uslc.po.gui.master.POMaster