Dim WsShell, WsShellExec, SFileSys, path
Set WsShell = CreateObject("WScript.Shell")
Set SFileSys = CreateObject("Scripting.FileSystemObject")
path = SFileSys.GetParentFolderName(WScript.ScriptFullName)

'ftp upload data
WsShell.Run chr(34) & path & "\winscp-upload.cmd" & Chr(34), 0
'ftp load data
WsShell.Run chr(34) & path & "\winscp-load.cmd" & Chr(34), 0

Set WsShell = Nothing

''Set WsShellExec = WsShell.Exec(loadScriptText)
''If (WsShellExec.Status <> 0) Then MsgBox WsShellExec.StdOut.ReadAll