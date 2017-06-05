@echo off

::==========================================================================
:: CONFIG
::==========================================================================

:: SERVERS[0]

:: FTP connection params
set SERVERS[0].FTP_PROTOCOL=ftp
set SERVERS[0].FTP_HOST=
set SERVERS[0].FTP_PORT=21
set SERVERS[0].FTP_USERNAME=
set SERVERS[0].FTP_PASSWORD=
set SERVERS[0].SSH_HOST_KEY=
:: enables passive (=on) or active (=off) transfer mode (FTP protocol only)
set SERVERS[0].PASSIVE=off
:: sync folders
set SERVERS[0].REMOTE_UPLOAD_FOLDER=
set SERVERS[0].REMOTE_LOAD_FOLDER=
set SERVERS[0].LOCAL_UPLOAD_FOLDER=
set SERVERS[0].LOCAL_LOAD_FOLDER=

:: SERVERS[1]

:: ...

::==========================================================================

:: task scheduler
set TASK_SCHEDULER_ROOT=gedemin
:: task options
set TASK_INTERVAL_MINS=5
:: ftp options
set FTP_RECONNECT_TIMEOUT_SECS=30
:: root path
for %%A in ("%~dp0\..") do set "ROOT=%%~fA"

@echo on