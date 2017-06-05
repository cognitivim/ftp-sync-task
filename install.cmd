call "scripts\config.cmd"

schtasks /create /sc minute /MO %TASK_INTERVAL_MINS% /tn "%TASK_SCHEDULER_ROOT%\ftp-sync-task" /tr "%ROOT%\scripts\ftp-sync-task.vbs"

pause