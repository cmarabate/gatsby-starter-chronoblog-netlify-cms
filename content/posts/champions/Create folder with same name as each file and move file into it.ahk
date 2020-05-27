; [Ctrl + Alt + F9]
^!F9::

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop, %A_ScriptDir%\*.*, 0, 0 ;Loop through current directory, ONLY FILES. Do NOT recurse subfolders.
{
	If (A_LoopFileExt = "png") 
	{
		LoopFileName = %A_LoopFileName%	
		LoopFileName := RegExReplace(LoopFileName, "\.png")
		FileCreateDir, %LoopFileName%
		FileMove, %A_LoopFileName%, %LoopFileName%
	}
}
Msgbox Tada!
Return