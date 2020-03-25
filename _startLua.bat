if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
Timeout 8
start .\LuaMacros.exe script.lua -R
start .\hotkeys.ahk
exit