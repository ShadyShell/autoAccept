#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=autoAccept.exe
#AutoIt3Wrapper_Res_Comment=Created by ShadyShell
#AutoIt3Wrapper_Res_Description=A League of Legends queue accept script
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <WinAPI.au3>
$tPoint = DllStructCreate("int X;int Y")
$list=WinList("League Client")
$WinLoc=WinGetPos($list[1][1])
DllStructSetData($tpoint, "X", $WinLoc[2]/2.11)
DllStructSetData($tpoint, "Y", $WinLoc[2]/1.56)
_WinAPI_ClientToScreen(WinGetHandle($list[1][1]), $tPoint)
$iColor = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)

While WinExists($list[1][1], "") == 1
	Sleep(300)
	If ($iColor == "10733511" Or $iColor == "13499130") Then
		MouseClick("left",DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)
		;MouseMove(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)
		DllStructSetData($tpoint, "X", $WinLoc[2]/2.11)
		DllStructSetData($tpoint, "Y", $WinLoc[2]/1.56)
		_WinAPI_ClientToScreen(WinGetHandle($list[1][1]), $tPoint)
		$iColor = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)
	Else
		DllStructSetData($tpoint, "X", $WinLoc[2]/2.11)
		DllStructSetData($tpoint, "Y", $WinLoc[2]/1.56)
		_WinAPI_ClientToScreen(WinGetHandle($list[1][1]), $tPoint)
		$iColor = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)
	EndIf
WEnd


;Old client
;~ $tPoint = DllStructCreate("int X;int Y")
;~ $WinLoc = WinGetPos("PVP.net Client")
;~ DllStructSetData($tpoint, "X", $WinLoc[2]/2.4)
;~ DllStructSetData($tpoint, "Y", $WinLoc[2]/1.8)
;~ _WinAPI_ClientToScreen(WinGetHandle("PVP.net Client"), $tPoint)
;~ $iColor = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)
;~ $iColor2 = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-250)
;~ While WinExists("PVP.net Client", "") == 1
;~ 	Sleep(300)
;~ 	If ($iColor == "1983087" Or $iColor == "3693705") Then
;~ 		MouseClick("left",DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)
;~ 		DllStructSetData($tpoint, "X", $WinLoc[2]/2.4)
;~ 		DllStructSetData($tpoint, "Y", $WinLoc[2]/1.8)
;~ 		_WinAPI_ClientToScreen(WinGetHandle("PVP.net Client"), $tPoint)
;~ 		$iColor = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)
;~ 	Else
;~ 		DllStructSetData($tpoint, "X", $WinLoc[2]/2.4)
;~ 		DllStructSetData($tpoint, "Y", $WinLoc[2]/1.8)
;~ 		_WinAPI_ClientToScreen(WinGetHandle("PVP.net Client"), $tPoint)
;~ 		$iColor = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-270)
;~ 	EndIf
;~ 	If ($iColor2 == "12601088" Or $iColor2 == "13393161") Then
;~ 		MouseClick("left",DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-250)
;~ 		DllStructSetData($tpoint, "X", $WinLoc[2]/2.4)
;~ 		DllStructSetData($tpoint, "Y", $WinLoc[2]/1.8)
;~ 		_WinAPI_ClientToScreen(WinGetHandle("PVP.net Client"), $tPoint)
;~ 		$iColor2 = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-250)
;~ 	Else
;~ 		DllStructSetData($tpoint, "X", $WinLoc[2]/2.4)
;~ 		DllStructSetData($tpoint, "Y", $WinLoc[2]/1.8)
;~ 		_WinAPI_ClientToScreen(WinGetHandle("PVP.net Client"), $tPoint)
;~ 		$iColor2 = PixelGetColor(DllStructGetData($tpoint, "X"),DllStructGetData($tpoint, "Y")-250)
;~ 	EndIf
;~ WEnd