@echo off

cd /d %~dp0

call "winscp-upload.cmd"
call "winscp-load.cmd"

@echo on