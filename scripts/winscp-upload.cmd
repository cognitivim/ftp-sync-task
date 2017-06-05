@echo off

call "config.cmd"
setlocal enabledelayedexpansion

set i=0
:OnLoopIterate
if defined SERVERS[%i%].FTP_PROTOCOL (

  if %%SERVERS[%i%].FTP_PROTOCOL%%==sftp (
    set key= -hostkey=""!SERVERS[%i%].FTP_HOST_KEY!""
  ) else (
    set key=
  )

  call start "" "%ROOT%\libs\winscp.com" /log="%ROOT%\ftp-upload.log" /ini=nul /command ^
    "open %%SERVERS[%i%].FTP_PROTOCOL%%://%%SERVERS[%i%].FTP_USERNAME%%:%%SERVERS[%i%].FTP_PASSWORD%%@%%SERVERS[%i%].FTP_HOST%%:%%SERVERS[%i%].FTP_PORT%%/%key%" ^
    "option transfer binary" ^
    "option batch abort" ^
    "option reconnecttime %%SERVERS[%i%].FTP_RECONNECT_TIMEOUT_SECS%%" ^
    "option confirm off" ^
    "cd %%SERVERS[%i%].REMOTE_UPLOAD_FOLDER%%" ^
    "lcd %%SERVERS[%i%].LOCAL_UPLOAD_FOLDER%%" ^
    "synchronize remote -resumesupport=on" ^
    "exit"

  set /a i+=1
  goto OnLoopIterate
)

if %ERRORLEVEL% neq 0 goto ONERROR

@echo on
exit /b 0

:ONERROR
echo exeption: ftp upload failed!
@echo on
exit /b 1