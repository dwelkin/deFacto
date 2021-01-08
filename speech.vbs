ReDim arr(WScript.Arguments.Count-1)
For i = 0 To WScript.Arguments.Count-1
  arr(i) = WScript.Arguments(i)
Next

CreateObject("SAPI.SpVoice").speak Join(arr)

WScript.Sleep 5000
Set objShell = Wscript.CreateObject("WScript.Shell")
objShell.Run "text.vbs"
