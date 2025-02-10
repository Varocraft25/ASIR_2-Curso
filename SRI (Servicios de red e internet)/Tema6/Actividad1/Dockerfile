# Imagen base con GUI (necesita Server Core o Windows completo)
FROM mcr.microsoft.com/windows/server:ltsc2022

# Habilitar RDP
RUN reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
RUN net user administrator /passwordreq:no
RUN powershell -Command "Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -Name 'UserAuthentication' -Value 0"

# Instalar tu aplicación (si necesita dependencias, agrégalas aquí)
WORKDIR C:\app
COPY openfire_4_9_2_x64.exe C:\app\openfire.exe

# Exponer el puerto RDP
EXPOSE 3389

# Ejecutar RDP y la aplicación al iniciar
CMD start /b openfire.exe && net start termservice && cmd /k
