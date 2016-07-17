#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=gta.ico
#AutoIt3Wrapper_Outfile=..\build\GTAMakros-32bit.Exe
#AutoIt3Wrapper_Outfile_x64=..\build\GTAMakros-64bit.Exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Fileversion=0.0.0.6
#AutoIt3Wrapper_Res_Fileversion_AutoIncrement=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****



Opt("SendKeyDownDelay", 50)

;ZEIGE NACHRICHT, DASS SCRIPT GESTARTET
TrayTip( "GTAMakros", "GTAMakros gestartet!",10)

;VARIABLE ZUM SPEICHERN DES PAUSIERENSTATUS, BEIM STARTEN ERSTMAL KEINE PAUSE
Global $pausiert = False


;ALLGEMEIN - RUFE FUNKTION AUF, WENN BUTTON GEDRÜCKT
HotKeySet("{PAUSE}", "PausierenBzwEntpausieren")
HotKeySet("{END}", "Beenden")

;SPEZIFISCH - - RUFE FUNKTION AUF, WENN BUTTON GEDRÜCKT
HotKeySet("{NUMPADMULT}", "TakeArmour")
HotKeySet("{NUMPADMULT}", "BuyArmour")


;ENDLOSSCHLEIFE, DAMIT DAS SCRIPT UNENDLICH LANG LÄUFT, SOLANG ES NICHT BEENDET WIRD
While 1
    Sleep(100)
WEnd




;FUNKTIONEN

Func PausierenBzwEntpausieren()
	$pausiert = Not $pausiert

	If $pausiert = False Then
		TrayTip( "GTAMakros", "GTAMakros nicht pausiert.",10)
	Else
		TrayTip( "GTAMakros", "GTAMakros pausiert.",10)
	EndIf

    While $pausiert
        Sleep(100)
    WEnd
EndFunc



Func Beenden()
	TrayTip( "GTAMakros", "GTAMakros beendet.",10)
	Exit
EndFunc


Func TakeArmour()

	 ;Verzögerung zwischen den Tasteneingaben in Millisekunden
	 Local $verzoegerung = 100

	;öffne Menü
	 Send("{m}")
	Sleep($verzoegerung)

	;nochmal runter
	Send("{DOWN}")
	Sleep($verzoegerung)

	;gehe in Inventar
	Send("{ENTER}")
	Sleep($verzoegerung)

	;gehe einmal runter
	Send("{DOWN}")
	Sleep($verzoegerung)

	;gehe in Panzerung
	Send("{ENTER}")
	Sleep($verzoegerung)

	;gehe hoch
	Send("{UP}")
	Sleep($verzoegerung)

	;nochmal hoch
	Send("{UP}")
	Sleep($verzoegerung)

	;schon wieder hoch
	Send("{UP}")
	Sleep($verzoegerung)

	;wähle Schwere Panzerung
	Send("{ENTER}")
	Sleep($verzoegerung)

	; Menü schließen

	Send("{m}")
	Sleep($verzoegerung)


EndFunc