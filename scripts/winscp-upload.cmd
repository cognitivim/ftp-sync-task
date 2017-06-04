@echo off

call "config.cmd"
setlocal enabledelayedexpansion

if %FTP_PROTOCOL%==sftp (
  set key= -hostkey=""%FTP_HOST_KEY%""
) else (
  set key=
)

start "" "%ROOT%\libs\winscp.com" /log="%ROOT%\ftp-upload.log" /ini=nul /command ^
  "open %FTP_PROTOCOL%://%FTP_USERNAME%:%FTP_PASSWORD%@%FTP_HOST%:%FTP_PORT%/%key%" ^
  "option transfer binary" ^
  "option batch abort" ^
  "option reconnecttime %FTP_RECONNECT_TIMEOUT_SECS%" ^
  "option confirm off" ^
  "cd %REMOTE_UPLOAD_FOLDER%" ^
  "lcd %LOCAL_UPLOAD_FOLDER%" ^
  "synchronize remote -resumesupport=on" ^
  "exit"

if %ERRORLEVEL% neq 0 goto ONERROR

@echo on
pause
exit /b 0

:ONERROR
echo exeption: ftp upload failed!
pause
@echo on
exit /b 1