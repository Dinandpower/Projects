
Gui, Add, Text,, ------------------------------------------Key Delay-----------------------------------------
Gui, Add, Edit, w300 vKeyDelay, 100
Gui, Add, Text,, ----------------------------------------Piano Music-----------------------------------------
Gui, Add, Edit, R10 w300 vPianoMusic
Gui, Add, Text,, 
Gui, Add, Text,, 								  F5 To Play Piano Music
Gui, Add, Text,,                                                                  F4 To Stop Playing
Gui, Add, Text,, 							
Gui, Add, Text,,								       {(Made by DisterVPlays Version 1.0)}
Gui, Add, Text,, -------------------------------------------My Links-------------------------------------------
Gui, Add, Button,x20 y375 w75 h30 gGithub, Github
Gui, Add, Button,x105 y375 w75 h30 gYoutube, Youtube
Gui, Add, Button,x190 y375 w75 h30 gUpdate, New Versions
Gui, Show, w320 h450, PianoClicker
F5::
!F5::
Gui, Submit, Nohide
Gui, Hide
PianoMusic := RegExReplace(PianoMusic, "`n|`r|/") ; Remove Stuff
X := 1
while (X:=RegExMatch(PianoMusic, "U)(\[.*]|.)",Keys, X))
{	
	X+=StrLen(Keys)
	Keys := Trim(Keys, "[]")
	SendInput % Keys
	Sleep, %KeyDelay%
}
return

Github:
run, chrome.exe https://github.com/Dinandpower/
return

Youtube:
run, chrome.exe https://www.youtube.com/channel/UC_ClSBETnvUxxtCrNumy2wg
return
Update:
run, chrome.exe https://github.com/Dinandpower/Projects/blob/ReadMe/VirPianoClicker/PianoClicker.ahk
return

return
F4::
!F4::
X := 0
Gui, Show
return

GuiClose:
	ExitApp
