MSBuild GTest.sln /p:Configuration=Debug /p:Platform=x64
MSBuild GTest.sln /p:Configuration=Release /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build=%Build%+1
echo %Build%>ver.txt

c:\tools\nuget\nuget.exe pack -Version 0.0.%Build% GTest-v142.nuspec
c:\tools\nuget\nuget.exe pack -Version 0.0.%Build% GTest-Main-v142.nuspec
