Dim WsShell, SFileSys, path
Set WsShell = CreateObject("WScript.Shell")
Set SFileSys = CreateObject("Scripting.FileSystemObject")
path = SFileSys.GetParentFolderName(WScript.ScriptFullName)

WsShell.Popup "start synchronization...", 2

WsShell.Run chr(34) & path & "\scripts\ftp-sync-task.cmd" & Chr(34), 0

Set WsShell = Nothing