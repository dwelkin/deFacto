ReDim arr(WScript.Arguments.Count-1)
For i = 0 To WScript.Arguments.Count-1
  arr(i) = WScript.Arguments(i)
Next

CreateObject("SAPI.SpVoice").speak Join(arr)

