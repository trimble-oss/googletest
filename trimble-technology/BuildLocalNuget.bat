MSBuild gtest.sln /p:Configuration=DebugCRT /p:Platform=x64
MSBuild gtest.sln /p:Configuration=Release /p:Platform=x64

@echo off
set /p Build=<ver.txt
set /a Build=%Build%+1
echo %Build% >ver.txt

c:\work\nuget.exe pack -Version 1.15.2.%Build% GTest-v142.nuspec
c:\work\nuget.exe pack -Version 1.15.2.%Build% GTest-Main-v142.nuspec
