local L
L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "enUS", true)

L["YELL_AGGRO"] = 'You have made an... unwise... decision.' 	-- 38048
L["Blood-Queen Lana'thel"] = true

L["Options"] = true
L["Enable Vamp"] = true
L["Tanks"] = true
L["Main tank"] = true
L["Off tank"] = true
L["Choose players based on"] = true
L["Players in raid only"] = true
L["Guild rank: "] = true
L[" (or higher)"] = true
L["Melee"] = true
L["Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.\n\nHigher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot)."] = true
L["Ranged A"] = true
L["Ranged B"] = true
L["Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.\n\nHigher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot)."] = true
L["Healers"] = true
L["Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.\n\nHigher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot)."] = true
L["Priority "] = true
L["No bite target left for you!"] = true
L["(No raid mark)"] = true
L["%s is coming to bite you!"] = true
L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = true
L["Your bite target %s. Please bite -->> "] = true
L["Your bite target %s. There is no bite target left for you!"] = true
L["died"] = true
L["disconnected"] = true
L["was mind controlled"] = true
L["One or more bite targets died or were disconnected. Check for new assignments."] = true
L["Raid Warnings"] = true
L["Send raid warnings"] = true
L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = true
L["Raid warning throttle"] = true
L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = true
L["Bite unlisted players"] = true
L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = true
L["General"] = true
L["Assignment delay"] = true
L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = true
L["Log"] = true
L["Enable log"] = true
L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = true
L["Output to"] = true
L["Say"] = true
L["Raid"] = true
L["Guild"] = true
L["Party"] = true
L["Officer"] = true
L["Channel"] = true
L["Self"] = true
L["Verbose log"] = true
L["Fight logging will include a lot of extra information."] = true
L["The channel to output to. Only applicable if Channel is selected as the output type."] = true
L["Clear marks when fight starts"] = true
L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = true
L["General"] = true
L["Trade"] = true
L["LocalDefense"] = true
L["%s assigned to bite %s (who is a %s)  "] = true
L["%s could not be assigned any bite target"] = true
L["%s is %s; desired victim type is %s"] = true
L["%s was bitten by %s"] = true
L["Unknown"] = true
L["%s entered frenzy mode, and must bite someone soon"] = true
L["%s was mind controlled"] = true
L["Auto-enable chat logging"] = true
L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = true
L["Enabling chat logging"] = true
L["%s bit someone else successfully, renewing their vampirism"] = true
L["%s took %d seconds to bite another player"] = true
L["Reverse marks"] = true
L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = true
L["Filter outgoing whispers"] = true
L["When checked, you will not see outgoing whispers sent from Vamp."] = true
L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = true
L["Feed yourself to %s!"] = true
L["Clear all players"] = true
L["Clears all player lists."] = true
L["Are you sure you want to clear all player lists?"] = true
L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = true
L["Arrow"] = true
L["Targets announce themselves"] = true
L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = true
L["%s is using VampArrow r%s"] = true
L["%d player(s) are running VampArrow. %d player(s) are not."] = true



--[[
					The rest of this file is auto-generated using the WoWAce localization application.
					Please go to http://www.wowace.com/projects/vamp/localization/ to update translations.
					Anyone with a WowAce/CurseForge account can edit them. 
]] 


L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "deDE")
if L then

L["YELL_AGGRO"] = 'Ihr habt... unklug... gewählt.' 	-- 38048
L["Blood-Queen Lana'thel"] = 'Blutkönigin Lana\'thel'

L["Are you sure you want to clear all player lists?"] = "Bist du sicher, dass du alle Spieler von der Liste entfernen willst?"
L["Arrow"] = "Pfeil"
L["Assignment delay"] = "Zuordnungsverzögerung"
L["Auto-enable chat logging"] = "Auto - Aktiviere das Chatlog"
L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = "Zuordnungen werden X Sekunden verzögert, nachdem ein Spieler ein Vampir geworden ist. 10 Sekunden sind empfohlen, weil das stellt sicher, dass alle Bisse verteilt wurden bevor neue Zuordnungen verteilt werden."
L["Bite unlisted players"] = "Nicht aufgelistete Spieler beißen"
L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = "Markiert den Spieler, der beißen muss, statt dem Spieler, der gebissen wird. Das kann bei Strategien sinnvoll sein, in denen das Ziel den Beißer finden muss."
L["Channel"] = "Kanal"
L["Choose players based on"] = "Wähle Spieler aufgrund von"
L[ [=[Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot).]=] ] = [=[Wähle bis zu 10 Spieler, die im Kampf als Heiler agieren. Nur Spieler der Gruppen 1-5 werden als Ziele ausgewählt.

Spieler mit einer höheren Nummer haben eine höhere Priorität um gebissen zu werden. Plätze können auch leer bleiben (wenn z.B. ein Spieler auf Schaden wechselt, lösche ihn einfach aus seinem Platz).]=]
L[ [=[Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[Wähle bis zu %d Spieler, die im Kampf als Nahkampf DDs agieren. Nur Spieler der Gruppen 1-5 werden als Ziele ausgewählt.

Spieler mit einer höheren Nummer haben eine höhere Priorität um gebissen zu werden. Plätze können auch leer bleiben (wenn z.B. ein Spieler auf Heilung wechselt, lösche ihn einfach aus seinem Platz).]=]
L[ [=[Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[Wähle bis zu %d Spieler, die im Kampf als Fernkampf DDs agieren. Nur Spieler der Gruppen 1-5 werden als Ziele ausgewählt.

Spieler mit einer höheren Nummer haben eine höhere Priorität um gebissen zu werden. Plätze können auch leer bleiben (wenn z.B. ein Spieler auf Heilung wechselt, lösche ihn einfach aus seinem Platz).]=]
L["Clear all players"] = "Entferne alle Spieler"
L["Clear marks when fight starts"] = "Lösche Symbole wenn der Kampf beginnt."
L["Clears all player lists."] = "Entfernt alle Spielerlisten."
L["died"] = "gestorben"
L["disconnected"] = "offline"
L["%d player(s) are running VampArrow. %d player(s) are not."] = "%d Spieler benutzen VampArrow. %d Spieler benutzen es nicht."
L["Enable log"] = "Aktiviere das Log"
L["Enable Vamp"] = "Aktiviere Vamp"
L["Enabling chat logging"] = "Aktiviere das Chatlog"
L["Feed yourself to %s!"] = "Lass dich von %s beißen!"
L["Fight logging will include a lot of extra information."] = "Das Kampflog beinhaltet viele weitere Informationen"
L["Filter outgoing whispers"] = "Filtere ausgehende Flüsternachrichten"
L["General"] = "Allgemein"
L["Guild"] = "Gilde"
L["Guild rank: "] = "Gildenrang: "
L["Healers"] = "Heiler"
L["LocalDefense"] = "Lokale Verteidigung"
L["Log"] = true
L["Main tank"] = "Main Tank"
L["Melee"] = "Nahkämpfer"
L["No bite target left for you!"] = "Es ist kein Ziel mehr zum Beißen übrig für dich!"
L["(No raid mark)"] = "(Kein Schlachtzugssymbol)"
L["Officer"] = "Offizier"
L["Off tank"] = "Off Tank"
L["One or more bite targets died or were disconnected. Check for new assignments."] = "Eines oder mehrere Ziele sind gestorben oder sind offline. Achtet auf neue Zuordnungen!"
L["Options"] = "Optionen"
L[" (or higher)"] = " (oder höher)"
L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = "Gibt einen Log aus, der alles beinhaltet was während eines Kampfes geschiet, inklusive wer gebissen wurde und wer als nächstes beissen wird."
L["Output to"] = "Ausgabe"
L["Party"] = "Gruppe"
L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = "Spieler der Gruppen 1-5, die aber in keiner Prioritätenliste gesetzt wurden, werden als Ziele vorgeschlagen. Ihre Priorität liegt über der der Heiler."
L["Players in raid only"] = "Nur Spieler im Schlachtzug"
L["Priority "] = "Priorität"
L["Raid"] = "Schlachtzug"
L["Raid Warnings"] = "Schlachtzugswarnungen"
L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = "Raid Warnungen über tote oder nicht mit dem Spiel verbundene Ziele werden nur einmal alle X Sekunden gesendet. Wenn während dieses Zeitraums weitere Spieler sterben oder einen DC haben, wird hierzu keine Warnung ausgegeben."
L["Raid warning throttle"] = "Schlachtzugswarnung beschränken"
L["Ranged A"] = "Fernkämpfer (Range DD) A"
L["Ranged B"] = "Fernkämpfer (Range DD) B"
L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = "Fernkämpfer können, zum Zweck der Positionierungm in 2 Gruppen aufgeteilt werden. Fernkämpfer A werden so mit immer versuchen andere Fernkämpfer der Gruppe A zu beißen etc. "
L["Reverse marks"] = "Markierungen umkehren"
L["%s assigned to bite %s (who is a %s)  "] = "%s muss %s beißen (ist %s)  "
L["Say"] = "Sagen"
L["%s bit someone else successfully, renewing their vampirism"] = "%s hat jemanden erfolgreich gebissen... Vampyrismus wurde erneuert"
L["%s could not be assigned any bite target"] = "%s konnte kein Beiss-Ziel zugewiesen werden"
L["Self"] = "Selbst"
L["Send raid warnings"] = "Sende Schlachtzugswarnungen"
L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = "Sendet eine Schlachtzugswarnung, wenn ein Ziel stirbt oder einen Disconnect hat. Warnungen werden nur alle paar Sekunden gesendet, wie weiter unten eingestellt."
L["%s entered frenzy mode, and must bite someone soon"] = "%s ist jetzt im Blutrausch und muss bald jemanden beissen"
L["%s is coming to bite you!"] = "%s kommt, um dich zu beißen!"
L["%s is %s; desired victim type is %s"] = "%s ist %s; bevorzugtes Opfer ist %s"
L["%s is using VampArrow r%s"] = "%s benutzt VampArrow r%s" -- Needs review
L["%s took %d seconds to bite another player"] = "%s wird %d Sekunden brauchen um einen weiteren Spieler zu beissen!"
L["%s was bitten by %s"] = "%s wurde von %s gebissen."
L["%s was mind controlled"] = "%s wurde übernommen"
L["Tanks"] = true
L["Targets announce themselves"] = "Ziele melden sich selber"
L["The channel to output to. Only applicable if Channel is selected as the output type."] = "Die Kanalausgabe. Nur dann verwendbar, wenn Kanal als Ausgabeformat eingestellt wurde"
L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = "Der Off-Tank wird ausgewählt sobald alle Fernkampf und Nahkampf DDs gebissen wurden (oder gestorben sind). Danach werden alle Heiler ausgewählt. Der Haupttank wird der Letzte sein, der zum Beißen ausgesucht wird."
L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = "Die Gruppe A der Fernkämpfer hat zu Kampfbeginn eine höhere Priorität als Gruppe B der Fernkämpfer."
L["Trade"] = "Handel"
L["Unknown"] = "Unbekannt"
L["Verbose log"] = "Ausführlicher Log"
L["was mind controlled"] = "übernommen"
L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = "Wenn irgendein Spieler gebissen wird aktiviert Vamp WoW's Chat-Prokoll. Dies wird den gesanmten Chat in die Datei WoWChatLog.txt schreiben. Protokollieren des Chats wird bis zum Ausloggen aktiv bleiben."
L["When checked, you will not see outgoing whispers sent from Vamp."] = "Wenn angehakt, werden abgehende Flüsternachrichten von Vamp unterdrückt "
L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = "Wenn der Kampf beginnt werden alle Schlachtzugssymbole von Spielern entfernt. Vamp prüft nicht ob du gegen Blutkönigin Lana'thel kämpfst oder nicht. Wenn aktiv und Vamp ist aktiv, werden Symbole auf Spielern entfernt wenn IRGENEIN Kampf im Schlachtzug beginnt."
L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = "Wenn aktiviert, melden sich alle gebissenen Ziele, die das VampArrow Addon benutzen, selber durch /schreien. Das wirkt als zusätzliche visuelle Hilfe um den Spieler zu lokalisieren."
L["Your bite target %s. Please bite -->> "] = "Dein Ziel ist %s. Bitte beiße -->> "
L["Your bite target %s. There is no bite target left for you!"] = "Dein Ziel ist %s. Es gibt kein weiteres Ziel für Dich!"

end

L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "esES")
if L then

L["YELL_AGGRO"] = 'Habéis tomado una... decisión... incorrecta.' 	-- 38048
L["Blood-Queen Lana'thel"] = 'Reina de Sangre Lana\'thel'

L["Are you sure you want to clear all player lists?"] = "¿Seguro que quieres borrar todas las listas de jugadores?"
L["Arrow"] = true
L["Assignment delay"] = "Retardo en la asignación"
-- L["Auto-enable chat logging"] = ""
L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = "Las asignaciones se retardarán X segundos después de que alguien se convierta en vampiro. Se recomiendan 10 segundos, así se asegura que todos los mordisocos se han hecho antes de asignar los nuevos"
-- L["Bite unlisted players"] = ""
-- L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = ""
-- L["Channel"] = ""
L["Choose players based on"] = "Elige jugadores en base a"
L[ [=[Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot).]=] ] = [=[Elige hasta 10 jugadores que figurarán como sanadores durante el combate. Sólo los jugadores de los grupos 1-5 serán objetivos a morder durante el combate.

Los jugadores con número más alto tendrán prioridad para ser mordidos. Puedes saltar huecos (por ejemplo, si un jugador cambia a DPS en mitad de la raid, simplemente déjales fuera de los huecos).]=] -- Needs review
--[==[ L[ [=[Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = "" ]==]
--[==[ L[ [=[Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = "" ]==]
L["Clear all players"] = "Limpiar todos los jugadores"
-- L["Clear marks when fight starts"] = ""
L["Clears all player lists."] = "Limpiar todas las listas de jugadores"
L["died"] = "muerto"
L["disconnected"] = "desconectado"
L["%d player(s) are running VampArrow. %d player(s) are not."] = "%d jugador(es) están usando VampArrow. %d jugador(es) no"
-- L["Enable log"] = ""
L["Enable Vamp"] = "Habilitar Vamp"
-- L["Enabling chat logging"] = ""
-- L["Feed yourself to %s!"] = ""
-- L["Fight logging will include a lot of extra information."] = ""
-- L["Filter outgoing whispers"] = ""
L["General"] = true
-- L["Guild"] = ""
L["Guild rank: "] = "Rango de hermandad"
L["Healers"] = "Sanadores"
-- L["LocalDefense"] = ""
-- L["Log"] = ""
L["Main tank"] = "Tanque principal"
L["Melee"] = "Melé"
L["No bite target left for you!"] = "No te queda nadie para morder"
L["(No raid mark)"] = "(Sin marca)"
-- L["Officer"] = ""
L["Off tank"] = "Tanque secundario"
-- L["One or more bite targets died or were disconnected. Check for new assignments."] = ""
L["Options"] = "Opciones"
L[" (or higher)"] = "(o mayor)"
-- L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = ""
-- L["Output to"] = ""
-- L["Party"] = ""
-- L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = ""
L["Players in raid only"] = "Sólo jugadores en la raid"
L["Priority "] = "Prioridad"
-- L["Raid"] = ""
L["Raid Warnings"] = "Alertas de banda"
-- L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = ""
-- L["Raid warning throttle"] = ""
L["Ranged A"] = "Rango A"
L["Ranged B"] = "Rango B"
L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = "Los rango se pueden separar en dos grupos a efectos de posicionamiento. Los miembros rango A intentarán morder a los rango B, etc."
-- L["Reverse marks"] = ""
-- L["%s assigned to bite %s (who is a %s)  "] = ""
-- L["Say"] = ""
-- L["%s bit someone else successfully, renewing their vampirism"] = ""
L["%s could not be assigned any bite target"] = "%s no se pudo asignar como objetivo"
-- L["Self"] = ""
L["Send raid warnings"] = "Enviar alertas de banda"
L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = "Enviar alerta de banda cuando un objetivo muere o se desconecta. Las alertas sólo se enviarán cada varios segundos, configurados más abajo"
L["%s entered frenzy mode, and must bite someone soon"] = "%s entra en ansia y debe morder a alguien pronto"
L["%s is coming to bite you!"] = "%s te va a morder"
-- L["%s is %s; desired victim type is %s"] = ""
L["%s is using VampArrow r%s"] = "%s está usando VampArrow r%s"
-- L["%s took %d seconds to bite another player"] = ""
-- L["%s was bitten by %s"] = ""
-- L["%s was mind controlled"] = ""
L["Tanks"] = "Tanques"
L["Targets announce themselves"] = "Los objetivos se auto anuncian"
-- L["The channel to output to. Only applicable if Channel is selected as the output type."] = ""
L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = "El tanque secundario será escogido después de que todos los DPS melé y rango hayan sido mordidos (o estén muertos). Después serán los sanadores. El tanque principal será el último jugador escogido para ser mordido." -- Needs review
L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = "El grupo de rangos A tiene prioridad más alta que los rangos B al principio del combate."
-- L["Trade"] = ""
-- L["Unknown"] = ""
-- L["Verbose log"] = ""
L["was mind controlled"] = "ha sido controlado"
-- L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = ""
-- L["When checked, you will not see outgoing whispers sent from Vamp."] = ""
-- L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = ""
L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = "Cuando se habilita, los objetivos que estén usando VampArrow se auto anunciarán con /gritar. Es otra ayuda visual para localizar a los objetivos."
-- L["Your bite target %s. Please bite -->> "] = ""
-- L["Your bite target %s. There is no bite target left for you!"] = ""

end

L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "esMX")
if L then

L["YELL_AGGRO"] = 'Han tomado una... decisión... necia.' 	-- 38048
L["Blood-Queen Lana'thel"] = 'Reina de Sangre Lana\'thel'

-- L["Are you sure you want to clear all player lists?"] = ""
-- L["Arrow"] = ""
-- L["Assignment delay"] = ""
-- L["Auto-enable chat logging"] = ""
-- L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = ""
-- L["Bite unlisted players"] = ""
-- L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = ""
-- L["Channel"] = ""
-- L["Choose players based on"] = ""
--[==[ L[ [=[Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot).]=] ] = "" ]==]
--[==[ L[ [=[Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = "" ]==]
--[==[ L[ [=[Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = "" ]==]
-- L["Clear all players"] = ""
-- L["Clear marks when fight starts"] = ""
-- L["Clears all player lists."] = ""
-- L["died"] = ""
-- L["disconnected"] = ""
-- L["%d player(s) are running VampArrow. %d player(s) are not."] = ""
-- L["Enable log"] = ""
-- L["Enable Vamp"] = ""
-- L["Enabling chat logging"] = ""
-- L["Feed yourself to %s!"] = ""
-- L["Fight logging will include a lot of extra information."] = ""
-- L["Filter outgoing whispers"] = ""
-- L["General"] = ""
-- L["Guild"] = ""
-- L["Guild rank: "] = ""
-- L["Healers"] = ""
-- L["LocalDefense"] = ""
-- L["Log"] = ""
-- L["Main tank"] = ""
-- L["Melee"] = ""
-- L["No bite target left for you!"] = ""
-- L["(No raid mark)"] = ""
-- L["Officer"] = ""
-- L["Off tank"] = ""
-- L["One or more bite targets died or were disconnected. Check for new assignments."] = ""
-- L["Options"] = ""
-- L[" (or higher)"] = ""
-- L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = ""
-- L["Output to"] = ""
-- L["Party"] = ""
-- L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = ""
-- L["Players in raid only"] = ""
-- L["Priority "] = ""
-- L["Raid"] = ""
-- L["Raid Warnings"] = ""
-- L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = ""
-- L["Raid warning throttle"] = ""
-- L["Ranged A"] = ""
-- L["Ranged B"] = ""
-- L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = ""
-- L["Reverse marks"] = ""
-- L["%s assigned to bite %s (who is a %s)  "] = ""
-- L["Say"] = ""
-- L["%s bit someone else successfully, renewing their vampirism"] = ""
-- L["%s could not be assigned any bite target"] = ""
-- L["Self"] = ""
-- L["Send raid warnings"] = ""
-- L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = ""
-- L["%s entered frenzy mode, and must bite someone soon"] = ""
-- L["%s is coming to bite you!"] = ""
-- L["%s is %s; desired victim type is %s"] = ""
-- L["%s is using VampArrow r%s"] = ""
-- L["%s took %d seconds to bite another player"] = ""
-- L["%s was bitten by %s"] = ""
-- L["%s was mind controlled"] = ""
-- L["Tanks"] = ""
-- L["Targets announce themselves"] = ""
-- L["The channel to output to. Only applicable if Channel is selected as the output type."] = ""
-- L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = ""
-- L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = ""
-- L["Trade"] = ""
-- L["Unknown"] = ""
-- L["Verbose log"] = ""
-- L["was mind controlled"] = ""
-- L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = ""
-- L["When checked, you will not see outgoing whispers sent from Vamp."] = ""
-- L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = ""
-- L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = ""
-- L["Your bite target %s. Please bite -->> "] = ""
-- L["Your bite target %s. There is no bite target left for you!"] = ""

end

L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "frFR")
if L then

L["YELL_AGGRO"] = 'Ce n\'est pas une décision… très sage.' 	-- 38048
L["Blood-Queen Lana'thel"] = 'Reine de sang Lana\'thel'

-- L["Are you sure you want to clear all player lists?"] = ""
L["Arrow"] = "Flèche"
L["Assignment delay"] = "Retard d'affectation"
-- L["Auto-enable chat logging"] = ""
-- L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = ""
L["Bite unlisted players"] = "Mordre les joueurs non listés"
-- L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = ""
-- L["Channel"] = ""
L["Choose players based on"] = "Choisissez les joueurs sur la base"
L[ [=[Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot).]=] ] = [=[Choisissez un maximum de 10 soigneurs pour le combat. Seuls les joueurs qui sont réellement dans vos groupes de raid actuelles 1-5 seront utilisé pour recevoir morsure vampirique au cours du combat.

Un numéro de joueurs supérieur aura une priorité plus élevée pour les morsures vampirique. Vous pouvez désactiver un joueur temporairement pendant le combat, il suffit de le sortir de la fenêtre.]=]
L[ [=[Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[Choisissez jusqu'à %d DPS mêlée pour le combat. Seuls les joueurs qui sont réellement dans vos groupes de raid actuelles 1-5 seront utilisé pour recevoir morsure vampirique au cours du combat.

Un numéro de joueurs supérieur aura une priorité plus élevée pour les morsures vampirique. Vous pouvez désactiver un joueur temporairement pendant le combat, il suffit de le sortir de la fenêtre.]=]
L[ [=[Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[Choisissez jusqu'à %d DPS distance. Seuls les joueurs qui sont réellement dans vos groupes de raid actuelles 1-5 seront utilisé pour recevoir morsure vampirique au cours du combat.

Un numéro de joueurs supérieur aura une priorité plus élevée pour les morsures vampirique. Vous pouvez désactiver un joueur temporairement pendant le combat, il suffit de le sortir de la fenêtre.]=]
-- L["Clear all players"] = ""
-- L["Clear marks when fight starts"] = ""
-- L["Clears all player lists."] = ""
L["died"] = "Mort"
L["disconnected"] = "Déconnecté"
-- L["%d player(s) are running VampArrow. %d player(s) are not."] = ""
-- L["Enable log"] = ""
L["Enable Vamp"] = "Activer Vamp"
-- L["Enabling chat logging"] = ""
-- L["Feed yourself to %s!"] = ""
-- L["Fight logging will include a lot of extra information."] = ""
-- L["Filter outgoing whispers"] = ""
-- L["General"] = ""
L["Guild"] = "Guilde"
L["Guild rank: "] = "Grade de guilde: "
L["Healers"] = true
-- L["LocalDefense"] = ""
L["Log"] = true
L["Main tank"] = "Tank principal"
L["Melee"] = "Mêlée"
L["No bite target left for you!"] = "Aucune cible pour morsure vampirique à coté de vous!"
L["(No raid mark)"] = "(Aucune marque de raid)"
L["Officer"] = "Officier"
L["Off tank"] = true
L["One or more bite targets died or were disconnected. Check for new assignments."] = "Un ou plusieurs joueurs mordus sont morts ou déconnectés. Vérifiez les nouvelles cibles."
L["Options"] = true
L[" (or higher)"] = " (ou supérieur)"
-- L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = ""
-- L["Output to"] = ""
L["Party"] = "Groupe"
-- L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = ""
L["Players in raid only"] = "Les joueurs du raid uniquement"
L["Priority "] = "Priorité"
L["Raid"] = true
L["Raid Warnings"] = "Raid Avertissements"
-- L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = ""
L["Raid warning throttle"] = "Raid alerte accélérer"
-- L["Ranged A"] = ""
-- L["Ranged B"] = ""
-- L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = ""
-- L["Reverse marks"] = ""
-- L["%s assigned to bite %s (who is a %s)  "] = ""
L["Say"] = "Dire"
-- L["%s bit someone else successfully, renewing their vampirism"] = ""
-- L["%s could not be assigned any bite target"] = ""
-- L["Self"] = ""
-- L["Send raid warnings"] = ""
-- L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = ""
-- L["%s entered frenzy mode, and must bite someone soon"] = ""
L["%s is coming to bite you!"] = "%s vient pour vous mordre!"
-- L["%s is %s; desired victim type is %s"] = ""
-- L["%s is using VampArrow r%s"] = ""
-- L["%s took %d seconds to bite another player"] = ""
-- L["%s was bitten by %s"] = ""
-- L["%s was mind controlled"] = ""
L["Tanks"] = true
-- L["Targets announce themselves"] = ""
-- L["The channel to output to. Only applicable if Channel is selected as the output type."] = ""
L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = "L'off-tank sera choisi une fois tous les DPS mêlée et à distance mordus (ou mort). Après cela, tous les guérisseurs seront choisis. Le MT est le tout dernier joueur a être choisi."
-- L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = ""
-- L["Trade"] = ""
-- L["Unknown"] = ""
-- L["Verbose log"] = ""
L["was mind controlled"] = "a été MC"
-- L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = ""
-- L["When checked, you will not see outgoing whispers sent from Vamp."] = ""
-- L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = ""
-- L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = ""
-- L["Your bite target %s. Please bite -->> "] = ""
-- L["Your bite target %s. There is no bite target left for you!"] = ""

end

L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "koKR")
if L then

L["YELL_AGGRO"] = '정말... 현명하지 못한... 결정을 했군.' 	-- 38048
L["Blood-Queen Lana'thel"] = '피의 여왕 라나텔'

L["Are you sure you want to clear all player lists?"] = "모든 플레이어 리스트를 초기화 하겠습니까?"
L["Arrow"] = "화살표"
L["Assignment delay"] = "지정 딜레이"
L["Auto-enable chat logging"] = "대화 기록 자동 활성화"
L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = "플레이어가 흡혈 상태가 된 후 X 초 후에 물기 대상을 배정합니다. 배정 시간을 10초 후로 하면 이전 물기가 모두 종료된 후에 대상을 배정합니다."
L["Bite unlisted players"] = "리스트에 없는 공격대원 물기"
L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = "물려야 할 공격대원 대신 물어야 할 공격대원에게 전술마크를 표시합니다. 물려야 할 사람이 물어야 할 사람을 찾아가는 전술에서 유용합니다."
L["Channel"] = "채널"
L["Choose players based on"] = "플레이어 정렬 방법"
L[ [=[Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot).]=] ] = [=[최대 10명까지 힐러를 지정할 수 있습니다. 현재 공격대의 1파티 ~ 5파티에 속한 공대원만이 흡혈 대상이 됩니다.

우선 순위에 따라 물릴 대상을 지정합니다. 슬롯을 비워둘 수도 있습니다(전투 중 역할이 바뀌는 경우).]=]
L[ [=[Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[최대 %d명 까지 밀리 딜러를 지정할 수 있습니다. 현재 공격대의 1파티 ~ 5파티에 속한 공대원만이 물릴 대상이 됩니다.

우선 순위에 따라 물릴 대상을 지정합니다. 슬롯을 비워둘 수도 있습니다(전투 중 역할이 바뀌는 경우).]=]
L[ [=[Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[최대 %d명 까지 원거리 딜러를 지정할 수 있습니다. 현재 공격대의 1파티 ~ 5파티에 속한 공대원만이 물릴 대상이 됩니다.

우선 순위에 따라 물릴 대상을 지정합니다. 슬롯을 비워둘 수도 있습니다(전투 중 역할이 바뀌는 경우).]=]
L["Clear all players"] = "모든 플레이어 초기화"
L["Clear marks when fight starts"] = "전투 시작 시 전술마크 초기화"
L["Clears all player lists."] = "모든 플레이어 목록 초기화"
L["died"] = "죽음"
L["disconnected"] = "접속 종료"
L["%d player(s) are running VampArrow. %d player(s) are not."] = "%d명의 플레이어가 VampArrow 사용 중. %d명의 플레이어는 미사용 중."
L["Enable log"] = "로그 활성화"
L["Enable Vamp"] = "Vamp 활성화"
L["Enabling chat logging"] = "대화 기록 활성화"
L["Feed yourself to %s!"] = "%s님에게 물리세요!"
L["Fight logging will include a lot of extra information."] = "전투 기록은 많은 정보를 포함하고 있습니다."
L["Filter outgoing whispers"] = "발신 귓속말 선별"
L["General"] = "일반 설정"
L["Guild"] = "길드"
L["Guild rank: "] = "길드 등급 : "
L["Healers"] = "힐러"
-- L["LocalDefense"] = ""
L["Log"] = "로그"
L["Main tank"] = "메인 탱커"
L["Melee"] = "밀리 딜러"
L["No bite target left for you!"] = "더 이상 물 대상이 없습니다!"
L["(No raid mark)"] = "(전술 징표 없음)"
L["Officer"] = "오피서"
L["Off tank"] = "부탱커"
L["One or more bite targets died or were disconnected. Check for new assignments."] = "죽거나 팅긴 공격대원이 있습니다. 새로운 대상을 확인하세요."
L["Options"] = "옵션"
L[" (or higher)"] = " (이상)"
L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = "전투 중 누가 물리고, 누구를 물게 배정됐는지 보여주는 전투 로그를 출력합니다."
L["Output to"] = "출력 -"
L["Party"] = "파티"
L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = "1파티 ~ 5파티에 속한 공격대원 중 우선순위 리스트에 없는 공격대원은 힐러보다 우선해서 물릴 대상으로 간주합니다."
L["Players in raid only"] = "공격대 파티중인 플레이어만"
L["Priority "] = "우선순위"
L["Raid"] = "공격대"
L["Raid Warnings"] = "공격대 경보"
L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = "물릴 대상 중 죽거나 팅긴 공대원을 X초 마다 공격대 경보로 알립니다. 설정한 간격 안에 죽거나 팅길 경우 경보로 알리지 않습니다."
L["Raid warning throttle"] = "공격대 경보 간격"
L["Ranged A"] = "원거리 A"
L["Ranged B"] = "원거리 B"
L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = "원거리는 필요에 따라서 두 그룹으로 나눌 수 있습니다. 원거리 A 멤버들은 항상 원거리 A 멤버만 물게 됩니다."
L["Reverse marks"] = "전술마크 반대로"
L["%s assigned to bite %s (who is a %s)  "] = "%s의 다음 물기 대상: %s (%s)  "
L["Say"] = "일반"
L["%s bit someone else successfully, renewing their vampirism"] = "%s님이 다른 사람을 물어서 피의 여왕의 정수를 갱신했습니다."
L["%s could not be assigned any bite target"] = "%s님은 물기 대상으로 지정할 수 없습니다."
L["Self"] = "자신에게"
L["Send raid warnings"] = "공격대 경보로 알림"
L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = "물어야 할 대상이 죽거나 팅기면 공격대 경보로 알립니다. 경보는 설정한 시간 간격으로만 나타납니다."
L["%s entered frenzy mode, and must bite someone soon"] = "%님은 광적인 피의 갈증 상태입니다. 바로 물어야 합니다."
L["%s is coming to bite you!"] = "%s님이 곧 당신을 물어요!"
-- L["%s is %s; desired victim type is %s"] = ""
L["%s is using VampArrow r%s"] = "%s님은 VampArrow r%s를 사용 중 입니다."
L["%s took %d seconds to bite another player"] = "%s님이 다른 플레이어를 무는데 %d초가 걸렸습니다."
L["%s was bitten by %s"] = " %s님이 %s님에게 물림"
L["%s was mind controlled"] = "%s 정신지배됨"
L["Tanks"] = "탱커"
L["Targets announce themselves"] = "대상 스스로 알립니다."
L["The channel to output to. Only applicable if Channel is selected as the output type."] = "출력할 채널. 출력 타입으로 채널을 선택했을때만 유용합니다."
L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = "부탱커는 모든 밀리와 원거리 딜러가 물리거나 죽고난 후에 물립니다. 부탱커가 물리고 난 후 힐러들이 지정됩니다. 메인 탱커는 공격대에서 가장 마지막에 물리는 대상이 됩니다."
L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = "원거리 A가 원거리 B보다 더 우선순위를 갖습니다."
-- L["Trade"] = ""
L["Unknown"] = "알수없음"
-- L["Verbose log"] = ""
L["was mind controlled"] = "정신지배 당함"
L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = "누군가 물리면 Vamp는 WOW의 대화 기록을 활성화 합니다. WoWChatLog.txt 파일에 모든 채널의 대화 기록이 기록되며, 당신이 로그 아웃 하기 전까지 계속 기록합니다."
L["When checked, you will not see outgoing whispers sent from Vamp."] = "체크하면 Vamp에서 보내는 귓속말이 보이지 않습니다."
L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = "전투가 시작되면 Vamp는 항상 공격대원의 전술마크를 초기화 합니다."
L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = "활성화 하면 VampArrow를 사용 중인 물기 대상은 스스로 외치기로 알려서 플레이어를 찾는데 도움을 줍니다."
L["Your bite target %s. Please bite -->> "] = "당신이 물 대상은 %s님 입니다."
L["Your bite target %s. There is no bite target left for you!"] = "당신이 물 대상은 %s님 입니다. 더 이상 물 대상이 없습니다!"

end

L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "ruRU")
if L then

L["YELL_AGGRO"] = 'Это было... неразумное... решение.' 	-- 38048
L["Blood-Queen Lana'thel"] = 'Кровавая королева Лана\'тель'

L["Are you sure you want to clear all player lists?"] = "Вы уверены что хотите очистить все списки игроков?"
L["Arrow"] = "Стрелка"
L["Assignment delay"] = "Задержка назначений"
L["Auto-enable chat logging"] = "Автоматически включить журналирование в чат"
L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = "Назначение целей для укуса будет задержано на X секунд, после того как игрок стал вампиром. Рекомендуется 10 секунд, поскольку перед выдачей новых назначений таким образом можно быть уверенным что все укусы сделаны."
L["Bite unlisted players"] = "Кусать игроков не в списке"
L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = "Отмечает метками кусающих игроков, а не тех кого надо укусить. Это может быть полезно когда игроки, назначенные целью для укуса должны сами найти кусающего."
L["Channel"] = "Канал"
L["Choose players based on"] = "Откуда выбрать игроков"
L[ [=[Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot).]=] ] = [=[Выбрать до 10 игроков, которые являются хиллерами в сражении. Только те игроки, которые состоят в группах 1-5 вашего рейда будут использоваться как цели для укусов.

Цели для укусов будут выбираться по порядку, исходя из приоритета. Вы можете пропускать слоты. (Это можно делать прямо в бою)]=]
L[ [=[Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[Выбрать до %d игроков, которые являются Мили ДПС в сражении. Только те игроки, которые состоят в группах 1-5 вашего рейда будут использоваться как цели для укусов.

Цели для укусов будут выбираться по порядку, исходя из приоритета. Вы можете пропускать слоты. (Это можно делать прямо в бою)]=]
L[ [=[Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[Выбрать до %d игроков, которые являются Рэнжед ДПС в сражении. Только те игроки, которые состоят в группах 1-5 вашего рейда будут использоваться как цели для укусов.

Цели для укусов будут выбираться по порядку, исходя из приоритета. Вы можете пропускать слоты. (Это можно делать прямо в бою)]=]
L["Clear all players"] = "Очистить все позиции"
L["Clear marks when fight starts"] = "Очистить метки после начала боя"
L["Clears all player lists."] = "Стирает все списки игроков."
L["died"] = "умер"
L["disconnected"] = "дисконнект"
L["%d player(s) are running VampArrow. %d player(s) are not."] = "%d игрок(ов) использет VampArrow. %d игрок(ов) нет."
L["Enable log"] = "Включить журнал"
L["Enable Vamp"] = "Включить аддон Vamp"
L["Enabling chat logging"] = "Включение журналирования чата"
L["Feed yourself to %s!"] = "Скорми себя %s!"
L["Fight logging will include a lot of extra information."] = "Журнал боя будет содержать большое количество дополнительной информации."
L["Filter outgoing whispers"] = "Фильтровать исходящий шепот"
L["General"] = "Основные настройки"
L["Guild"] = "Гильдия"
L["Guild rank: "] = "Звание:"
L["Healers"] = "Хиллеры"
L["LocalDefense"] = "Оборона"
L["Log"] = "Журнал"
L["Main tank"] = "МейнТанк"
L["Melee"] = "Милишники"
L["No bite target left for you!"] = "Вам больше некого кусать!"
L["(No raid mark)"] = "(Без рейдовой метки)"
L["Officer"] = "Офицер"
L["Off tank"] = "ОффТанк"
L["One or more bite targets died or were disconnected. Check for new assignments."] = "Одна или несколько целей для укусов умерли или в дисконнекте. Установите новые цели!"
L["Options"] = "Настройки"
L[" (or higher)"] = "(или выше)"
L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = "Выводит журнал всех событий в течение сражения, включая кто был укушен и кто был назначен им для следующего укуса."
L["Output to"] = "Выводить в"
L["Party"] = "Группа"
L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = "Игроки в группах 1-5, но не указанные в списке приоритетов, будут считаться возможными целями для укусов. И они будут стоять в приоритете перед хиллерами."
L["Players in raid only"] = "Только игроки в рейде"
L["Priority "] = "Приоритет "
L["Raid"] = "Рейд"
L["Raid Warnings"] = "Оповещения для рейда"
L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = "Оповещения для рейда о мертвых или оффлайновых игроках, являющихся целями для укуса будут отправляться каждые X секунд. Если игрок умрет или уйдёт в оффлайн в течение этого периода времени, то никакого оповещения не появится."
L["Raid warning throttle"] = "Частота оповещений для рейда"
L["Ranged A"] = "Рейнджед А"
L["Ranged B"] = "Рейнджед Б"
L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = "Рейнджед игроки могут быть разбиты на две группы для удобства позиционирования. Игрокам из Рейнджед А всегда будут назначаться для укуса другие игроки из Рейнджед А, и т.д."
L["Reverse marks"] = "Обратить метки"
L["%s assigned to bite %s (who is a %s)  "] = "%s должен укусить %s (он %s)"
L["Say"] = "Сказать"
L["%s bit someone else successfully, renewing their vampirism"] = "%s укусил другого игрока, их вампиризм обновлен"
L["%s could not be assigned any bite target"] = "У %s нет доступных целей для укуса"
L["Self"] = "Себе"
L["Send raid warnings"] = "Делать оповещения для рейда"
L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = "Делать оповещение для рейда, когда цель для укуса умирает или уходит в оффлайн. Оповещения будут появляться раз в несколько секунд, смотря как настроите."
L["%s entered frenzy mode, and must bite someone soon"] = "%s впал в бешенство и должен кого-нибудь укусить"
L["%s is coming to bite you!"] = "%s скоро вас укусит!"
L["%s is %s; desired victim type is %s"] = "%s является %s; желательная цель для укуса - %s"
L["%s is using VampArrow r%s"] = "%s использует VampArrow r%s"
L["%s took %d seconds to bite another player"] = "%s потратил %d секунд(ы) на укус другого игрока"
L["%s was bitten by %s"] = "%s был укушен %s"
L["%s was mind controlled"] = "%s подвергся контролю над разумом"
L["Tanks"] = "Танки"
L["Targets announce themselves"] = "Цели объявляют себя"
L["The channel to output to. Only applicable if Channel is selected as the output type."] = "Канал для вывода сообщений. Применимо только если в качестве способа вывода выбран Канал."
L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = "ОффТанки не будут выбраны как цель для укусов, пока все мили и рэнжед ДПС не станут вампирами (или сдохнут). После этого, будут выбраны хиллеры. Мейн танк - последняя цель для укусов."
L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = "В начале боя у группы Рейнджед А более высокий приоритет чем у группы Рейнджед Б."
L["Trade"] = "Торговля"
L["Unknown"] = "Неизвестный"
L["Verbose log"] = "Подробный журнал"
L["was mind controlled"] = "в майнд контроле"
L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = "После любого укуса, Vamp включит журналирование чата. При этом сообщение из всех каналов будут помещаться в файл WoWChatLog.txt. Журналирование будет работать до выхода из игры."
L["When checked, you will not see outgoing whispers sent from Vamp."] = "Когда установлено, вы не будете видеть шепот посылаемый аддоном."
L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = "Очищает метки со всех игроков после начала сражения. Vamp не проверяет, ведется ли бой именно с Королевой Лана'тель. Если эта опция включена, метки на игроках будут очищаться после начала ЛЮБОГО сражения в рейде."
L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = "Если включено, цели укусов с работающим аддоном VampArrow будут объявлять себя через /крик. Это еще один способ визуально определить местоположение игрока."
L["Your bite target %s. Please bite -->> "] = "Вы кусаете %s. Пожалуйста укусите -->>"
L["Your bite target %s. There is no bite target left for you!"] = "Вы кусаете %s. Вам уже некого кусать!"

end

L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "zhCN")
if L then

L["YELL_AGGRO"] = '你做了一个……愚蠢的……决定。' 	-- 38048
L["Blood-Queen Lana'thel"] = '鲜血女王兰娜瑟尔'

-- L["Are you sure you want to clear all player lists?"] = ""
-- L["Arrow"] = ""
L["Assignment delay"] = "分配延时"
-- L["Auto-enable chat logging"] = ""
L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = "某玩家变成吸血鬼后,被咬设置将会被延时 X 秒.  建议将此值设定为10秒钟, 这样可以确保所有被咬玩家的任务分配都可以完成." -- Needs review
L["Bite unlisted players"] = "咬没有被列出的玩家"
-- L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = ""
-- L["Channel"] = ""
L["Choose players based on"] = "选择了玩家因为"
L[ [=[Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot).]=] ] = [=[为此战斗选择10名治疗的玩家. 只有玩家在组1到组5在战斗中才会被用来作为咬得对象.

编号越高的玩家将先会被咬. 你可以中途配置位置 (例如,如果有玩家中途改治疗为DPS,你只需要将其位置清空)]=]
--[==[ L[ [=[Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = "" ]==]
--[==[ L[ [=[Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = "" ]==]
-- L["Clear all players"] = ""
-- L["Clear marks when fight starts"] = ""
-- L["Clears all player lists."] = ""
L["died"] = "已死亡"
L["disconnected"] = "已断线"
-- L["%d player(s) are running VampArrow. %d player(s) are not."] = ""
-- L["Enable log"] = ""
L["Enable Vamp"] = "启用Vamp"
-- L["Enabling chat logging"] = ""
-- L["Feed yourself to %s!"] = ""
-- L["Fight logging will include a lot of extra information."] = ""
L["Filter outgoing whispers"] = "过滤输出的密语"
L["General"] = "一般设置"
-- L["Guild"] = ""
L["Guild rank: "] = "工会等级"
L["Healers"] = "治疗"
-- L["LocalDefense"] = ""
-- L["Log"] = ""
L["Main tank"] = "主坦克"
L["Melee"] = "近战"
L["No bite target left for you!"] = "已经没有被咬的目标了!"
L["(No raid mark)"] = "(没有团队标记)"
-- L["Officer"] = ""
L["Off tank"] = "副坦克"
L["One or more bite targets died or were disconnected. Check for new assignments."] = "一个或多个被咬目标死亡或者已断线.  请给出新的任务安排"
L["Options"] = "选项"
L[" (or higher)"] = "或更高"
-- L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = ""
-- L["Output to"] = ""
-- L["Party"] = ""
L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = "没有被列在优先名单,但在组1至组5中的玩家,会被认定为可以被咬的对象. 他们将比治疗者优先被选中."
L["Players in raid only"] = "只限在团队中的玩家"
L["Priority "] = "优先"
-- L["Raid"] = ""
L["Raid Warnings"] = "团队警告"
L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = "被咬后已死亡或者短线的团队警告会被每隔 X 秒钟后送出, 在下面的选项中设置. 如果玩家在设定的时间内死亡或者短线,团队警告将不会被发出."
L["Raid warning throttle"] = "团队警告调节"
-- L["Ranged A"] = ""
-- L["Ranged B"] = ""
-- L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = ""
L["Reverse marks"] = "反向标记"
-- L["%s assigned to bite %s (who is a %s)  "] = ""
-- L["Say"] = ""
-- L["%s bit someone else successfully, renewing their vampirism"] = ""
-- L["%s could not be assigned any bite target"] = ""
-- L["Self"] = ""
L["Send raid warnings"] = "发出团队警告"
L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = "当被咬玩家死亡或短线以后发出团队警告.  警告将会每个几秒钟后送出, 在下面的选项中设置."
-- L["%s entered frenzy mode, and must bite someone soon"] = ""
L["%s is coming to bite you!"] = "%s要来咬你了"
-- L["%s is %s; desired victim type is %s"] = ""
-- L["%s is using VampArrow r%s"] = ""
-- L["%s took %d seconds to bite another player"] = ""
-- L["%s was bitten by %s"] = ""
-- L["%s was mind controlled"] = ""
L["Tanks"] = "坦克"
-- L["Targets announce themselves"] = ""
-- L["The channel to output to. Only applicable if Channel is selected as the output type."] = ""
L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = "在近战和远程DPS被咬(或者死亡)以后,副坦克将会被选中.在这之后,所有的治疗都会被选定. 主坦克将会是最后一个选中被咬的玩家."
-- L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = ""
-- L["Trade"] = ""
-- L["Unknown"] = ""
-- L["Verbose log"] = ""
L["was mind controlled"] = "被心控了"
-- L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = ""
L["When checked, you will not see outgoing whispers sent from Vamp."] = "如果选中,你不会看到Vamp发出的密语"
-- L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = ""
-- L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = ""
L["Your bite target %s. Please bite -->> "] = "你咬的目标为 %s. 请咬 -->>"
L["Your bite target %s. There is no bite target left for you!"] = "你咬的目标是 %s.  你已经没有可以被咬的目标了!"

end

L = LibStub("AceLocale-3.0"):NewLocale("Vamp", "zhTW")
if L then

L["YELL_AGGRO"] = '你做了一個...不明智的...選擇。' 	-- 38048
L["Blood-Queen Lana'thel"] = '血腥女王菈娜薩爾'

L["Are you sure you want to clear all player lists?"] = "確認清除所有玩家排序列表"
L["Arrow"] = "箭頭指標"
L["Assignment delay"] = "指派延遲"
L["Auto-enable chat logging"] = "自動啟用通話記錄"
L["Bite assignments will be delayed X seconds after a player becomes a vampire. 10 seconds is recommended, as that ensures that all bites have gone out before any assignments are given."] = "當某玩家變成吸血鬼後，咬人指定將會延遲 X 秒。 建議延遲時間為10秒鐘，以確保指派排定前所有咬人均已完成。"
L["Bite unlisted players"] = "咬未列表的玩家"
L["Causes the player doing the biting to be marked, instead of the player to be bitten. This can be useful for strategies where the bite target must find the biter."] = "標記要去咬人的玩家（取代標記被咬的玩家，讓被咬者能夠去尋找咬人者）"
L["Channel"] = "頻道"
L["Choose players based on"] = "選擇玩家基於"
L[ [=[Choose up to 10 players who act as healers for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to DPS mid-raid, just empty them out of the slot).]=] ] = [=[選擇10名於戰鬥中擔任治療者的玩家，在戰鬥中僅有第1隊至第5隊會當作被咬的目標。

編號越高的玩家將優先被咬。您可以調整配置(例如，若有玩家轉為輸出，僅需將其位置清空即可)]=]
L[ [=[Choose up to %d players who act as melee DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[選擇%d名玩家於戰鬥中擔任近戰輸出，僅有第1隊至第5隊的成員才能當作被咬目標。

編號越高的玩家將優先被咬，您可以調整配置 (例如，若有玩家於戰鬥中改為治療，僅需將其格位清空即可)。]=]
L[ [=[Choose up to %d players who act as ranged DPS for the fight. Only players who are actually in your current raid groups 1-5 will be used for bite targets during the fight.

Higher numbered players will be a higher priority for bites. You can skip slots (for example, if a player changes to healing mid-raid, just empty them out of the slot).]=] ] = [=[選擇 %d 名玩家於戰鬥中擔任遠程輸出，僅有第1隊至第5隊的成員才能當作被咬目標。

編號越高的玩家將優先被咬，您可以調整配置 (例如，若有玩家於戰鬥中改為治療，僅需將其格位清空即可)。]=]
L["Clear all players"] = "清除排序列表"
L["Clear marks when fight starts"] = "戰鬥開始時清除標記"
L["Clears all player lists."] = "清除所有玩家排序列表"
L["died"] = "已死亡"
L["disconnected"] = "已離線"
L["%d player(s) are running VampArrow. %d player(s) are not."] = "%d 玩家使用VampArrow. %d 玩家並未安裝."
L["Enable log"] = "啟用記錄"
L["Enable Vamp"] = "已啟用"
L["Enabling chat logging"] = "啟用對話記錄"
L["Feed yourself to %s!"] = "現在準備被咬，要咬你的人是: %s!"
L["Fight logging will include a lot of extra information."] = "戰鬥記錄會包括許多額外資訊"
L["Filter outgoing whispers"] = "過濾發出的密語"
L["General"] = "一般"
L["Guild"] = "公會"
L["Guild rank: "] = "公會階級: "
L["Healers"] = "治療者"
L["LocalDefense"] = "本地防務"
L["Log"] = "紀錄"
L["Main tank"] = "主坦克"
L["Melee"] = "近戰"
L["No bite target left for you!"] = "已無可咬目標!"
L["(No raid mark)"] = "(無團隊標記)"
L["Officer"] = "幹部"
L["Off tank"] = "副坦克"
L["One or more bite targets died or were disconnected. Check for new assignments."] = "一位或更多被咬目標已經死亡或離線，請重新指定優先順序。"
L["Options"] = "選項"
L[" (or higher)"] = " (或更高)"
L["Outputs a log of everything that happens during the fight, including who is bitten and who they are assigned to bite next."] = "紀錄每次血后的戰鬥資訊，包含被咬和下個去咬的人"
L["Output to"] = "輸出至"
L["Party"] = "隊伍"
L["Players in raid groups 1-5, but not listed in any priority list, will be considered valid bite targets. They will be prioritized above the healers."] = "在第1隊至第5隊的團隊成員但未被列入被咬名單者，將比治療者更優先列入目標。"
L["Players in raid only"] = "只在團隊中的成員"
L["Priority "] = "優先順序"
L["Raid"] = "團隊"
L["Raid Warnings"] = "團隊警告"
L["Raid warnings about dead or disconnected bite targets will only be sent once every X seconds, configured here. If players die or disconnect during the throttle period, no warning will appear."] = "在此設置每隔X秒發出對於已經死亡或離線成員的團隊警告，但於團隊警告調節期間並不會發出警告訊息。"
L["Raid warning throttle"] = "團隊警告調節"
L["Ranged A"] = "遠程 A"
L["Ranged B"] = "遠程 B"
L["Ranged can be split into two groups for positioning purposes. Ranged A members will always try to bite Ranged A members, etc."] = "遠程能分成兩組，例如遠程A組的總是咬回A組成員"
L["Reverse marks"] = "反向標記"
L["%s assigned to bite %s (who is a %s)  "] = "%s 已被設定去咬 %s"
L["Say"] = "說"
L["%s bit someone else successfully, renewing their vampirism"] = "%s 成功咬到了並刷新身上的吸血鬼"
L["%s could not be assigned any bite target"] = "%s 無法被指派去咬任何目標"
L["Self"] = "自己"
L["Send raid warnings"] = "發送團隊警告"
L["Sends a raid warning when a bite target dies or disconnects. Warnings will only be sent every several seconds, configured below."] = "在此設置當被咬目標死亡或離線時發出團隊警告的間隔秒數。"
L["%s entered frenzy mode, and must bite someone soon"] = "%s 進入狂暴, 必須儘速咬人"
L["%s is coming to bite you!"] = "%s要來咬你了!"
L["%s is %s; desired victim type is %s"] = true -- Needs review
L["%s is using VampArrow r%s"] = "%s 正在使用 VampArrow r%s"
L["%s took %d seconds to bite another player"] = "%s 使用了 %d 秒去咬目標"
L["%s was bitten by %s"] = "%s 被 %s 咬到"
L["%s was mind controlled"] = "%s 被心靈控制"
L["Tanks"] = "坦克"
L["Targets announce themselves"] = "由被咬目標發出通告"
L["The channel to output to. Only applicable if Channel is selected as the output type."] = "此頻道為發出頻道"
L["The off-tank will be chosen once all melee and ranged DPS have been bitten (or died). After that, all healers will be chosen. The main tank is the very last player chosen to be bitten."] = "所有近戰與遠程輸出都已被咬(或死亡)後，先選擇去咬副坦克，繼而去咬治療者，主坦克將是最後一位被咬的人。"
L["The Ranged A group has a higher priority than Ranged B at the beginning of the fight."] = "遠程A隊比遠程B隊在戰鬥開始前具有更高優先"
L["Trade"] = "交易頻道"
L["Unknown"] = "未知"
L["Verbose log"] = "詳細紀錄"
L["was mind controlled"] = "被心控"
L["When any player is bit, Vamp will turn on WoW's chat logging. This writes all chat channels to WoWChatLog.txt. Chat logging will not be turned off unless you log out."] = [=[當任何人被咬時會自動紀錄資訊到WoWChatLog.txt
此項需重新登入才能作用]=]
L["When checked, you will not see outgoing whispers sent from Vamp."] = "點選以屏閉發出的密語"
L["When combat begins, clears all raid marks from players. Vamp doesn't actually check to see if you're fighting Blood-Queen Lana'thel or not. If this is on and Vamp is enabled, marks on players will be cleared when ANY fight starts in a raid."] = "戰鬥開始時清除所有玩家身上的標記"
L["When enabled, any bite targets running the VampArrow add-on will announce themselves in /yell. This acts as another visual aid to help locate the player."] = "若被咬目標有安裝並啟動VampArrow插件時，將利用大喊/yell方式發出通告，以方便定位。"
L["Your bite target %s. Please bite -->> "] = "你要咬的目標為%s，請咬 -->> "
L["Your bite target %s. There is no bite target left for you!"] = "你要咬的目標為%s，已無可咬目標!"

end
