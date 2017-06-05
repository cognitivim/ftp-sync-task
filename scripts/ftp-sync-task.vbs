Dim WsShell, WsShellExec, SFileSys, path
Set WsShell = CreateObject("WScript.Shell")
Set SFileSys = CreateObject("Scripting.FileSystemObject")
path = SFileSys.GetParentFolderName(WScript.ScriptFullName)

WsShell.Run chr(34) & path & "\ftp-sync-task.cmd" & Chr(34), 0

Set WsShell = Nothing

''Set WsShellExec = WsShell.Exec(loadScriptText)
''If (WsShellExec.Status <> 0) Then MsgBox WsShellExec.StdOut.ReadAll