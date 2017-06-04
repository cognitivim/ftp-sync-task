@echo off

::==========================================================================
:: CONFIG
::==========================================================================
:: FTP connection params
set FTP_PROTOCOL=ftp
set FTP_HOST=
set FTP_PORT=21
set FTP_USERNAME=
set FTP_PASSWORD=
set SSH_HOST_KEY=
:: sync folders
set REMOTE_UPLOAD_FOLDER=
set REMOTE_LOAD_FOLDER=
set LOCAL_UPLOAD_FOLDER=
set LOCAL_LOAD_FOLDER=
::==========================================================================
:: task scheduler
set TASK_SCHEDULER_ROOT=gedemin
set TASK_INTERVAL_MINS=5
:: ftp options
set FTP_RECONNECT_TIMEOUT_SECS=30
:: root path
for %%A in ("%~dp0\..") do set "ROOT=%%~fA"

@echo on