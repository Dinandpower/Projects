Clicker:=false
loop
{
XButton2::
{
if(Clicker==true)
{
Clicker:=false
}
else if(Clicker==false)
{
Clicker:=true
}
}
return
}


*~$LButton::
if(Clicker==true){
sleep 3
click, 1
sleep 3
click, 1
}

return

*~$RButton::

While Clicker==true && getkeystate("RButton", "P") {

click, right, 3
sleep 1
click, right, 2
sleep 1
}


return