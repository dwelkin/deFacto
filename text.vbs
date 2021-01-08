do

Dim o
Set o = CreateObject("MSXML2.XMLHTTP")
o.open "GET", "https://uselessfacts.jsph.pl/random.md?language=en", False
o.send

Dim text
text = Split(o.responseText, "Source")
fact = Replace(text(0), "> ", "")

CreateObject("SAPI.SpVoice").speak fact

X=MsgBox(fact, 1=16,"Random Facts")
Set x=WScript.CreateObject("WScript.Shell")

for i = 1 to 5
x.Run"text.vbs"
wscript.sleep 500
next
loop
