#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm

;-------------2ND KEYBOARD USING LUAMACROS-----------------

;#IfWinActive ahk_exe Adobe Premiere Pro.exe ;---EVERYTHING BELOW THIS LINE WILL ONLY WORK INSIDE PREMIERE PRO. But you can change this to anything you like. You can use Window Spy to determine the ahk_exe of any program, so that your macros will only work when and where you want them to.

#IfWinActive

~F24::
	FileRead, key, %A_ScriptDir%\keypressed.txt
	tippy(key) ;calls tooltip to check key pressed
	callKey(key)
Return

;Tooltip Maker
tippy(tipsHere, wait:=500)
{
	ToolTip, %tipsHere% TP,,,8
	SetTimer, noTip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
noTip:
	ToolTip,,,,8
return
;Tooltip Maker ending

;main Function that calls what key was pressed
callKey(value){
	%value%()
}
;end main func

;whatever keys that should be active - below - listed and executed as a function - function name should be the same as LuaMacros detects.
enter(){
	MsgBox, Enter was pressed
}
