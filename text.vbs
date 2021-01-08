Dim o
Set o = CreateObject("MSXML2.XMLHTTP")
o.open "GET", "https://uselessfacts.jsph.pl/random.md?language=en", False
o.send

Dim text
text = Split(o.responseText, "Source")
fact = Replace(text(0), "> ", "")

Set objShell = Wscript.CreateObject("WScript.Shell")
objShell.Run "speech.vbs " & fact
X = MsgBox(fact, 0,"Random Facts")

Set x=WScript.CreateObject("WScript.Shell")
x.Run"text.vbs"
Set x=WScript.CreateObject("WScript.Shell")
x.Run"text.vbs"
X=MsgBox(fact, 0,"Random Facts")
