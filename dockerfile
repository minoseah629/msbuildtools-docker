FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019
LABEL author="minoseah629"

SHELL [ "cmd","/S", "/C" ]
ADD https://aka.ms/vs/16/release/vs_buildtools.exe /temp/vs_buildtools.exe
RUN C:\TEMP\vs_buildtools.exe --quiet --wait --norestart --full --nocache || if "%ERRORLEVEL%"=="3010" EXIT 0 

ENTRYPOINT [ "powershell", "-NoLogo", "-ExecutionPolicy", "ByPass"]

#C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\common7\Tools\vsdevcmd.bat
