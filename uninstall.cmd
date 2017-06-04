call "scripts/config.cmd"

schtasks /delete /f /tn "%TASK_SCHEDULER_ROOT%\ftp-sync-task"

pause