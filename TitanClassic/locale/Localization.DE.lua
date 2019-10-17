local L = LibStub("AceLocale-3.0"):NewLocale("TitanClassic","deDE")
if not L then return end

L["TITAN_PANEL"] = "Titan Panel Classic";
local TITAN_PANEL = "Titan Panel Classic";
L["TITAN_PANEL_ONLY"] = "Titan Panel";
local TITAN_PANEL_ONLY = "Titan Panel";
L["TITAN_DEBUG"] = "<Titan>";
L["TITAN_PRINT"] = "Titan";

L["TITAN_NA"] = "N/V";
L["TITAN_SECONDS"] = "Sekunde(n)";
L["TITAN_MINUTES"] = "Minute(n)";
L["TITAN_HOURS"] = "Stunde(n)";
L["TITAN_DAYS"] = "Tag(e)";
L["TITAN_SECONDS_ABBR"] = "s";
L["TITAN_MINUTES_ABBR"] = "m";
L["TITAN_HOURS_ABBR"] = "S";
L["TITAN_DAYS_ABBR"] = "T";
L["TITAN_MILLISECOND"] = "ms";
L["TITAN_KILOBYTES_PER_SECOND"] = "KB/s";
L["TITAN_KILOBITS_PER_SECOND"] = "kbps"
L["TITAN_MEGABYTE"] = "MB";
L["TITAN_NONE"] = "None";
L["TITAN_USE_COMMA"] = "Benutze Komma";
L["TITAN_USE_PERIOD"] = "Benutze Punkt";

L["TITAN_PANEL_ERROR_PROF_DELCURRENT"] = "Aktuelles Profil darf nicht gel\195\182scht werden.";
local TITAN_PANEL_WARNING = GREEN_FONT_COLOR_CODE.."WARNUNG : "..FONT_COLOR_CODE_CLOSE
local TITAN_PANEL_RELOAD_TEXT = "Wenn Du diesen Schritt ausführen willst, klicke auf 'Accept' (deine UI wird neu geladen), anderenfalls klicke auf 'Abbrechen' oder dr\195\188cke die 'ESC'-Taste."
L["TITAN_PANEL_RESET_WARNING"] = TITAN_PANEL_WARNING
	.."Diese Einstellung wird die Titanbars und "..TITAN_PANEL.." Einstellungen auf die Standardwerte zur\195\188cksetzen. Zus195\164tzlich wird das Profil neu erstellt."
	..TITAN_PANEL_RELOAD_TEXT
L["TITAN_PANEL_RELOAD"] = TITAN_PANEL_WARNING
	.."Dies wird "..TITAN_PANEL.." neu laden. "
	..TITAN_PANEL_RELOAD_TEXT
L["TITAN_PANEL_ATTEMPTS"] = TITAN_PANEL.." Versuche"
L["TITAN_PANEL_ATTEMPTS_SHORT"] = "Versuche"
L["TITAN_PANEL_ATTEMPTS_DESC"] = "Folgende Plugins haben eine Registrierungsanfrage an "..TITAN_PANEL.." gestellt.\n"
	.."Bitte sende entsprechende Fehler an deren Autor."
L["TITAN_PANEL_ATTEMPTS_TYPE"] = "Art"
L["TITAN_PANEL_ATTEMPTS_CATEGORY"] = "Kategorie"
L["TITAN_PANEL_ATTEMPTS_BUTTON"] = "Schaltfl195\164che"
L["TITAN_PANEL_ATTEMPTS_STATUS"] = "Status"
L["TITAN_PANEL_ATTEMPTS_ISSUE"] = "Grund"
L["TITAN_PANEL_ATTEMPTS_NOTES"] = "Hinweise"
L["TITAN_PANEL_ATTEMPTS_TABLE"] = "Tabellenindex"
L["TITAN_PANEL_EXTRAS"] = TITAN_PANEL.." Extras"
L["TITAN_PANEL_EXTRAS_SHORT"] = "Extras"
L["TITAN_PANEL_EXTRAS_DESC"] = "Dies sind Plugins, deren Konfigurationsdaten nicht geladen wurden.\n"
	.."Diese k\195\182nnen gefahrlos gel\195\182scht werden."
L["TITAN_PANEL_EXTRAS_DELETE_BUTTON"] = "L\195\182sche Konfigurationsdaten"
L["TITAN_PANEL_EXTRAS_DELETE_MSG"] = "Konfigurationseintrag wurde gel\195\182scht."
L["TITAN_PANEL_CHARS"] = "Spielercharaktere"
L["TITAN_PANEL_CHARS_DESC"] = "Dies sind Spielercharaktere mit Konfigurationsdaten."
L["TITAN_PANEL_REGISTER_START"] = "Registriere "..TITAN_PANEL.." Plugins..."
L["TITAN_PANEL_REGISTER_END"] = "Registrationsprozess abgeschlossen."

-- slash command help
L["TITAN_PANEL_SLASH_RESET_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Benutzen: |cffffffff/titan {reset | reset tipfont/tipalpha/panelscale/spacing}";
L["TITAN_PANEL_SLASH_RESET_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset: |cffffffffSetzt Panelposition/-inhalt auf Voreinstellung zur\195\188ck.";
L["TITAN_PANEL_SLASH_RESET_2"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipfont: |cffffffffSetzt Paneltooltip-Schriftgr\195\182\195\159e auf Voreinstellung zur\195\188ck.";
L["TITAN_PANEL_SLASH_RESET_3"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset tipalpha: |cffffffffSetzt Paneltooltip-Transparenz auf Voreinstellung zur\195\188ck.";
L["TITAN_PANEL_SLASH_RESET_4"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset panelscale: |cffffffffSetzt Panelgr\195\182\195\159e auf Voreinstellung zur\195\188ck.";
L["TITAN_PANEL_SLASH_RESET_5"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."reset spacing: |cffffffffSetzt Panel-Buttonabstand auf Voreinstellung zur\195\188ck.";
L["TITAN_PANEL_SLASH_GUI_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Benutzen: |cffffffff/titan {gui control/trans/skin}";
L["TITAN_PANEL_SLASH_GUI_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui control: |cffffffff\195\150ffnet das Ace3-Panel-Kontroll-GUI.";
L["TITAN_PANEL_SLASH_GUI_2"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui trans: |cffffffff\195\150ffnet das Ace3-Transparenz-Kontroll-GUI.";
L["TITAN_PANEL_SLASH_GUI_3"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."gui skin: |cffffffff\195\150ffnet das Ace3-Skin-Kontroll-GUI.";
L["TITAN_PANEL_SLASH_PROFILE_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Benutzen: |cffffffff/titan {profile use <profile>}";
L["TITAN_PANEL_SLASH_PROFILE_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."profile use <name> <server>: |cffffffff\195\156berschreibt das aktuelle Profil mit dem angegebenen, gespeicherten Profil.";
L["TITAN_PANEL_SLASH_PROFILE_2"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<name>: |cffffffffkann entweder ein Spiekercharatername oder ein individuell bezeichnetes Profil sein."
L["TITAN_PANEL_SLASH_PROFILE_3"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<server>: |cffffffffkann entweder ser Servername oder 'TitanCustomProfile' sein."
L["TITAN_PANEL_SLASH_SILENT_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Benutzen: |cffffffff/titan {silent}";
L["TITAN_PANEL_SLASH_SILENT_1"] = LIGHTYELLOW_FONT_COLOR_CODE.."silent: |cffffffffSchaltet "..TITAN_PANEL.." so um, dass es still geladen wird.";
L["TITAN_PANEL_SLASH_HELP_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Benutzen: |cffffffff/titan {help | help <topic>}";
L["TITAN_PANEL_SLASH_HELP_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<Punkt>: reset/gui/profile/silent/help ";
L["TITAN_PANEL_SLASH_ALL_0"] = LIGHTYELLOW_FONT_COLOR_CODE.."Benutzen: |cffffffff/titan <topic>";
L["TITAN_PANEL_SLASH_ALL_1"] = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<Punkt>: |cffffffffreset/gui/profile/silent/help ";

-- slash command responses
L["TITAN_PANEL_SLASH_RESP1"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel Tooltip-Schriftgr\195\182sse wurde zur\195\188ckgesetzt.";
L["TITAN_PANEL_SLASH_RESP2"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel Tooltip-Transparenz wurde zur\195\188ckgesetzt.";
L["TITAN_PANEL_SLASH_RESP3"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel Gr\195\182sse wurde zur\195\188ckgesetzt.";
L["TITAN_PANEL_SLASH_RESP4"] = LIGHTYELLOW_FONT_COLOR_CODE.."Titan Panel Buttonabstand wurde zur\195\188ckgesetzt.";

-- global profile locale
L["TITAN_PANEL_GLOBAL"] = "Global";
L["TITAN_PANEL_GLOBAL_PROFILE"] = "Global-Profil";
L["TITAN_PANEL_GLOBAL_USE"] = "Benutze Global-Profil";
L["TITAN_PANEL_GLOBAL_USE_AS"] = "Benutze als Global-Profil";
L["TITAN_PANEL_GLOBAL_USE_DESC"] = "Benutze ein Global-Profil f\195\188r alle Spielercharaktere";
L["TITAN_PANEL_GLOBAL_RESET_PART"] = "Setze Einstellungen zur\195\188ck";
L["TITAN_PANEL_GLOBAL_ERR_1"] = "Du kannst kein individuelles Profil laden, wenn ein globales Profil verwendet wird.";

-- general panel locale
L["TITAN_PANEL_VERSION_INFO"] = "|cffffd700 vom |cffff8c00"..TITAN_PANEL_ONLY.." Development Team";
L["TITAN_PANEL_MENU_TITLE"] = TITAN_PANEL;
L["TITAN_PANEL_MENU_HIDE"] = "Verstecken";
L["TITAN_PANEL_MENU_IN_COMBAT_LOCKDOWN"] = "(Im Kampf)";
L["TITAN_PANEL_MENU_RELOADUI"] = "(UI neuladen)";
L["TITAN_PANEL_MENU_SHOW_COLORED_TEXT"] = "Farbigen Text anzeigen";
L["TITAN_PANEL_MENU_SHOW_ICON"] = "Icon anzeigen";
L["TITAN_PANEL_MENU_SHOW_LABEL_TEXT"] = "Beschriftungstext anzeigen";
L["TITAN_PANEL_MENU_AUTOHIDE"] = "Titanleiste automatisch ausblenden";
L["TITAN_PANEL_MENU_CENTER_TEXT"] = "Text zentrieren";
L["TITAN_PANEL_MENU_DISPLAY_BAR"] = "Zeige Leiste";
L["TITAN_PANEL_MENU_DISABLE_PUSH"] = "Bildschirmjustierung deaktivieren (Gr\195\182\195\159en\195\164nderung)";
L["TITAN_PANEL_MENU_DISABLE_MINIMAP_PUSH"] = "Minimapjustierung deaktivieren";
L["TITAN_PANEL_MENU_DISABLE_LOGS"] = "Log automatisch justieren";
L["TITAN_PANEL_MENU_DISABLE_BAGS"] = "Automatische Taschenanpassung";
L["TITAN_PANEL_MENU_DISABLE_TICKET"] = "Automatische Ticketfensteranpassung";
L["TITAN_PANEL_MENU_PROFILES"] = "Profile";
L["TITAN_PANEL_MENU_PROFILE"] = "Profil ";
L["TITAN_PANEL_MENU_PROFILE_CUSTOM"] = "Benutzerdefiniert";
L["TITAN_PANEL_MENU_PROFILE_DELETED"] = " wurde gel\195\182scht.";
L["TITAN_PANEL_MENU_PROFILE_SERVERS"] = "Server";
L["TITAN_PANEL_MENU_PROFILE_CHARS"] = "Charakter";
L["TITAN_PANEL_MENU_PROFILE_RELOADUI"] = "UI wird jetzt neu geladen nach dr\195\188cken von 'Okay' und das benutzerdefinierte Profil sichern.";
L["TITAN_PANEL_MENU_PROFILE_SAVE_CUSTOM_TITLE"] = "Name f\195\188r benutzerdefiniertes Profil:\n(20 Zeichen max, keine Leerzeichen erlaubt, Gross-/Kleinschreibung beachten) ";
L["TITAN_PANEL_MENU_PROFILE_SAVE_PENDING"] = "Aktuelle Leisteneinstellung werden gesichtert unter Profilname: ";
L["TITAN_PANEL_MENU_PROFILE_ALREADY_EXISTS"] = "Dieser Profilname existiert bereits. Soll wirklich \195\188berschrieben werden? Dr\195\188cke 'Accept' f\195\188r JA, wenn NEIN dr\195\188cke 'Cancel' oder 'Escape'.";
L["TITAN_PANEL_MENU_MANAGE_SETTINGS"] = "Verwalten";
L["TITAN_PANEL_MENU_LOAD_SETTINGS"] = "Einstellungen laden";
L["TITAN_PANEL_MENU_DELETE_SETTINGS"] = "L\195\182schen";
L["TITAN_PANEL_MENU_SAVE_SETTINGS"] = "Sichern";
L["TITAN_PANEL_MENU_CONFIGURATION"] = "Konfiguration";
L["TITAN_PANEL_OPTIONS"] = "Optionen";
L["TITAN_PANEL_MENU_TOP"] = "Oben"
L["TITAN_PANEL_MENU_TOP2"] = "Oben 2"
L["TITAN_PANEL_MENU_BOTTOM"] = "Unten"
L["TITAN_PANEL_MENU_BOTTOM2"] = "Unten 2"
L["TITAN_PANEL_MENU_OPTIONS"] = TITAN_PANEL.." Tooltips und Rahmen";
L["TITAN_PANEL_MENU_OPTIONS_SHORT"] = "Tooltips und Rahmen";
L["TITAN_PANEL_MENU_TOP_BARS"] = "Obere Leisten"
L["TITAN_PANEL_MENU_BOTTOM_BARS"] = "Untere Leisten"
L["TITAN_PANEL_MENU_OPTIONS_BARS"] = "Leisten";
L["TITAN_PANEL_MENU_OPTIONS_MAIN_BARS"] = TITAN_PANEL.." - Obere Leisten";
L["TITAN_PANEL_MENU_OPTIONS_AUX_BARS"] = TITAN_PANEL.." - Untere Leisten";
L["TITAN_PANEL_MENU_OPTIONS_TOOLTIPS"] = "Tooltips";
L["TITAN_PANEL_MENU_OPTIONS_FRAMES"] = "Bilder pro Sek.";
L["TITAN_PANEL_MENU_PLUGINS"] = "Plugins";
L["TITAN_PANEL_MENU_LOCK_BUTTONS"] = "Schaltfl\195\164chen fixieren";
L["TITAN_PANEL_MENU_VERSION_SHOWN"] = "Pluginversionen anzeigen";
L["TITAN_PANEL_MENU_LDB_SIDE"] = "Plugin rechts";
L["TITAN_PANEL_MENU_LDB_FORCE_LAUNCHER"] = "Schiebe Starter nach rechts";
L["TITAN_PANEL_MENU_CATEGORIES"] = {"Titan Standardplugins","Allgemein","Kampf","Informationen","Interface","Beruf"}
L["TITAN_PANEL_MENU_TOOLTIPS_SHOWN"] = "Zeige Tooltips";
L["TITAN_PANEL_MENU_TOOLTIPS_SHOWN_IN_COMBAT"] = "Verberge Tooltips im Kampf";
L["TITAN_PANEL_MENU_AUTOHIDE_IN_COMBAT"] = "Sperre Auto-Verbergen der Leisten, wenn im Kampf";
L["TITAN_PANEL_MENU_RESET"] = "Einstellungen zur\195\188cksetzen";
L["TITAN_PANEL_MENU_TEXTURE_SETTINGS"] = "Skins";
L["TITAN_PANEL_MENU_LSM_FONTS"] = "Panel-Schriftart"
L["TITAN_PANEL_MENU_ENABLED"] = "Ein";
L["TITAN_PANEL_MENU_DISABLED"] = "Aus";
L["TITAN_PANEL_SHIFT_LEFT"] = "Shift-Links";
L["TITAN_PANEL_SHIFT_RIGHT"] = "Shift-Rechts";
L["TITAN_PANEL_MENU_SHOW_PLUGIN_TEXT"] = "Zeige Plugintext";
L["TITAN_PANEL_MENU_BAR_ALWAYS"] = "Immer An";
L["TITAN_PANEL_MENU_POSITION"] = "Position";
L["TITAN_PANEL_MENU_BAR"] = "Leiste";
L["TITAN_PANEL_MENU_DISPLAY_ON_BAR"] = "Festlegen, in welcher Leiste das Plugin angezeigt wird.";
L["TITAN_PANEL_MENU_SHOW"] = "Zeige Plugin";
L["TITAN_PANEL_MENU_PLUGIN_RESET"] = "Aktualisiere Plugins";
L["TITAN_PANEL_MENU_PLUGIN_RESET_DESC"] = "Aktualisiere Plugin-Text und Position";
L["TITAN_PANEL_MENU_SILENT_LOAD"] = "Stilles Laden";
L["TITAN_PANEL_MENU_HIDE_ORDERHALL"] = "Ordenshalle Befehlsleiste verstecken";

-- localization strings for AceConfigDialog-3.0
L["TITAN_ABOUT_VERSION"] = "Version";
L["TITAN_ABOUT_AUTHOR"] = "Autor";
L["TITAN_ABOUT_CREDITS"] = "Credits";
L["TITAN_ABOUT_CATEGORY"] = "Kategorie";
L["TITAN_ABOUT_EMAIL"] = "Email";
L["TITAN_ABOUT_WEB"] = "Website";
L["TITAN_ABOUT_LICENSE"] = "Lizenz";
L["TITAN_PANEL_CONFIG_MAIN_LABEL"] = "Informationsleisten-Addon. Erlaubt Dateneingaben oder Start-Zus\195\164tze auf einer Kontrollleiste am oberen oder unteren Bildschirmrand.";
L["TITAN_TRANS_MENU_TEXT"] = TITAN_PANEL.." Transparenz";
L["TITAN_TRANS_MENU_TEXT_SHORT"] = "Transparenz";
L["TITAN_TRANS_MENU_DESC"] = "Transparenz f\195\188r Titanleisten und Tooltips einstellen.";
L["TITAN_TRANS_MAIN_CONTROL_TITLE"] = "Hauptleiste";
L["TITAN_TRANS_AUX_CONTROL_TITLE"] = "Erweiterungsleiste";
L["TITAN_TRANS_CONTROL_TITLE_TOOLTIP"] = "Tooltip";
L["TITAN_TRANS_TOOLTIP_DESC"] = "Setzt Transparenz der Tooltips verschiedener Plugins.";
L["TITAN_UISCALE_MENU_TEXT"] = "Leisteneinstellungen";
L["TITAN_UISCALE_MENU_TEXT_SHORT"] = "Scale and Font";
L["TITAN_UISCALE_CONTROL_TITLE_UI"] = "UI Gr\195\182sse";
L["TITAN_UISCALE_CONTROL_TITLE_PANEL"] = "Leistengr\195\182sse";
L["TITAN_UISCALE_CONTROL_TITLE_BUTTON"] = "Buttonabstand";
L["TITAN_UISCALE_CONTROL_TITLE_ICON"] = "Iconabstand";
L["TITAN_UISCALE_CONTROL_TOOLTIP_TOOLTIPFONT"] = "Tooltip Font-Skalierung" ;
L["TITAN_UISCALE_TOOLTIP_DISABLE_TEXT"] = "Tooltip Font-Skalierung aus";
L["TITAN_UISCALE_MENU_DESC"] = "Kontrolliert verschiedene Aspekte von der UI und den Leisten.";
L["TITAN_UISCALE_SLIDER_DESC"] = "Skaliert das gesamte UI.";
L["TITAN_UISCALE_PANEL_SLIDER_DESC"] = "Skaliert verschiedene Panelbuttons und Icons.";
L["TITAN_UISCALE_BUTTON_SLIDER_DESC"] = "Abstandsjustierung linksausgerichtete Plugins.";
L["TITAN_UISCALE_ICON_SLIDER_DESC"] = "Abstandsjustierung rechtsausgerichtete Plugins.";
L["TITAN_UISCALE_TOOLTIP_SLIDER_DESC"] = "Gr\195\182ssenjustierung f\195\188r Tooltips verschiedener Plugins.";
L["TITAN_UISCALE_DISABLE_TOOLTIP_DESC"] = "Titan's Tooltip Font-Skalierung AUS.";

L["TITAN_SKINS_TITLE"] = TITAN_PANEL.." Skins";
L["TITAN_SKINS_OPTIONS_CUSTOM"] = "Skins - Eigene";
L["TITAN_SKINS_TITLE_CUSTOM"] = TITAN_PANEL.." Eigene Skins";
L["TITAN_SKINS_MAIN_DESC"] = "Alle eigenen Skins sollten in: \n"
			.."..\\AddOns\\Titan\\Artwork\\Custom\\<Skin Folder>\\ sein".."\n"
			.."\n"..TITAN_PANEL.." und angepasste skins sind im Custom Ordner abgelegt."
L["TITAN_SKINS_LIST_TITLE"] = "Skin-Auswahl";
L["TITAN_SKINS_SET_DESC"] = "W\195\164hle Skin f\195\188r die Titanleisten.";
L["TITAN_SKINS_SET_HEADER"] = "Bestimme Leisten-Skin";
L["TITAN_SKINS_RESET_HEADER"] = "Reset "..TITAN_PANEL.." Skins";
L["TITAN_SKINS_NEW_HEADER"] = "Ne\195\188 Skin hinzuf\195\188gen";
L["TITAN_SKINS_NAME_TITLE"] = "Skin Name";
L["TITAN_SKINS_NAME_DESC"] = "Name f\195\188r neue Skin.";
L["TITAN_SKINS_PATH_TITLE"] = "Skin Speicherort";
L["TITAN_SKINS_PATH_DESC"] = "Exakten Speicherort der eigenen Skin eingeben, wie im Beispiel und in den Hinweisen beschrieben.";
L["TITAN_SKINS_ADD_HEADER"] = "Skin hinzuf\195\188gen";
L["TITAN_SKINS_ADD_DESC"] = "F\195\188gt eine neue Skin zur bestehenden Liste hinzu.";
L["TITAN_SKINS_REMOVE_HEADER"] = "Entferne Skin";
L["TITAN_SKINS_REMOVE_DESC"] = "Zu entfernende Skin aus der bestehenden Liste w\195\164hlen.";
L["TITAN_SKINS_REMOVE_BUTTON"] = "Entfernen";
L["TITAN_SKINS_REMOVE_BUTTON_DESC"] = "Entfernt die gew\195\164hlte Skin aus der bestehenden Liste.";
L["TITAN_SKINS_REMOVE_NOTES"] = "Du bist eigenverantwortlich für das Entfernen von unerw\195\188nschten Skins "
	.."aus dem "..TITAN_PANEL.." Installationsordner. Addons d\195\188rfen keine Dateien anlegen oder l\195\182schen."
L["TITAN_SKINS_RESET_DEFAULTS_TITLE"] = "Zur\195\188cksetzen auf Standard";
L["TITAN_SKINS_RESET_DEFAULTS_DESC"] = "Setzt die Skinliste auf die Standard "..TITAN_PANEL.." Skins zur\195\188ck.";
L["TITAN_PANEL_MENU_LSM_FONTS_DESC"] = "Wähle die Schriftart f\195\188r die verschiedenen Plugins in den "..TITAN_PANEL.."-Leisten.";
L["TITAN_PANEL_MENU_FONT_SIZE"] = "Font-Gr\195\182\195\159e";
L["TITAN_PANEL_MENU_FONT_SIZE_DESC"] = "Legt die Font-Gr\195\182\195\159e f\195\188r "..TITAN_PANEL.." fest.";
L["TITAN_PANEL_MENU_FRAME_STRATA"] = ""..TITAN_PANEL.." Frame-Strata";
L["TITAN_PANEL_MENU_FRAME_STRATA_DESC"] = "Legt die Frame-Strata f\195\188r die "..TITAN_PANEL.." Leiste(n) fest.";
-- /end localization strings for AceConfigDialog-3.0

L["TITAN_PANEL_MENU_ADV"] = "Erweitert";
L["TITAN_PANEL_MENU_ADV_DESC"] = "\195\182ndere die Timereinstellungen nur, wenn es mit den Frameanordnungen Probleme gibt.".."\n";
L["TITAN_PANEL_MENU_ADV_PEW"] = "Betrete Spielwelt";
L["TITAN_PANEL_MENU_ADV_PEW_DESC"] = "\195\182ndere die Werte nur (normalerweise erh\195\182hen), wenn die Rahmen nach Betreten oder Verlassen der Spielwelt oder Instanzen nicht korrekt angezeigt werden.";
L["TITAN_PANEL_MENU_ADV_VEHICLE"] = "Fahrzeug";
L["TITAN_PANEL_MENU_ADV_VEHICLE_DESC"] = "\195\182ndere die Werte nur (normalerweise erh\195\182hen), wenn die Rahmen nach Betreten oder Verlassen eines Fahrzeugs nicht korrekt angezeigt werden.";

L["TITAN_AUTOHIDE_TOOLTIP"] = "Leiste automatisch ausblenden";

L["TITAN_AMMO_FORMAT"] = "%d";
L["TITAN_AMMO_BUTTON_LABEL_AMMO"] = "Munition: ";
L["TITAN_AMMO_BUTTON_LABEL_THROWN"] = "Geworfen: ";
L["TITAN_AMMO_BUTTON_LABEL_AMMO_THROWN"] = "Munition/Geworfen: ";
L["TITAN_AMMO_TOOLTIP"] = "Angelegte Munition/Geworfen Z\195\164hler";
L["TITAN_AMMO_MENU_TEXT"] = "Munition/Geworfen";
L["TITAN_AMMO_BUTTON_NOAMMO"] = "--";
L["TITAN_AMMO_MENU_REFRESH"] = "Aktualisiere Display"; --SENSITY
L["TITAN_AMMO_BULLET_NAME"] = "Show Ammo Name";
L["TITAN_AMMO_THROWN"] = "Thrown";
L["TITAN_AMMO_GUN"] = "Bullets";
L["TITAN_AMMO_BOW"] = "Arrows";

L["TITAN_BAG_FORMAT"] = "%d/%d";
L["TITAN_BAG_BUTTON_LABEL"] = "Taschen: ";
L["TITAN_BAG_TOOLTIP"] = "Taschenbenutzung";
L["TITAN_BAG_TOOLTIP_HINTS"] = "Hinweis: Links-Klick um alle Taschen zu \195\182ffnen.";
L["TITAN_BAG_MENU_TEXT"] = "Taschenbenutzung";
L["TITAN_BAG_USED_SLOTS"] = "Benutzte Pl\195\164tze";
L["TITAN_BAG_FREE_SLOTS"] = "Freie Pl\195\164tze";
L["TITAN_BAG_BACKPACK"] = "Rucksack";
L["TITAN_BAG_MENU_SHOW_USED_SLOTS"] = "Bereits belegte Pl\195\164tze anzeigen";
L["TITAN_BAG_MENU_SHOW_AVAILABLE_SLOTS"] = "Noch verf\195\188gbare Pl\195\164tze anzeigen";
L["TITAN_BAG_MENU_SHOW_DETAILED"] = "Zeige detaillierten Tooltip";
L["TITAN_BAG_MENU_IGNORE_SLOTS"] = "Ignoriere Slots";
L["TITAN_BAG_MENU_IGNORE_AMMO_POUCH_SLOTS"] = "Pl\195\164tze des Munitionsbeutels ignorieren";
L["TITAN_BAG_MENU_IGNORE_SHARD_BAGS_SLOTS"] = "Ignoriere Splittertaschen";
L["TITAN_BAG_MENU_IGNORE_PROF_BAGS_SLOTS"] = "Ignoriere Berufs-Taschen";
L["TITAN_BAG_AMMO_POUCH_NAMES"] = {"Grollhufbalgk\195\182cher", "Worgbalgk\195\182cher", "Uraltes in Sehnen eingewickeltes Laminablatt", "K\195\182cher der tausend Federn", "K\195\182cher aus Knotenhautleder", "K\195\182cher aus Harpyienhaut", "Ribblys K\195\182cher", "Schnellziehk\195\182cher", "Schwerer K\195\182cher", "K\195\182cher der Nachtwache", "Jagdk\195\182cher", "Mittlerer K\195\182cher", "Leichter Lederk\195\182cher", "Kleiner K\195\182cher", "Leichter K\195\182cher", "Munitionsbeutel des Schmugglers", "Munitionsbeutel aus Knotenhautleder", "Munitionsbeutel aus Netherschuppen", "Schulterg\195\188rtel aus Gnollhaut", "Ribblys Schulterg\195\188rtel", "Dicker Ledermunitionsbeutel", "Schwerer Ledermunitionsbeutel", "Schulterg\195\188rtel der Nachtwache", "Mittlerer Geschossbeutel", "Jagdmunitionssack" ,"Kleiner Ledermunitionsbeutel", "Kleiner Geschossbeutel", "Kleiner Munitionsbeutel", "Verst\195\164rkter nerubischer K\195\182cher", "Drachenschuppenmunitionsbeutel"};
L["TITAN_BAG_SHARD_BAG_NAMES"] = {"Seelenbeutel", "Kleiner Seelenbeutel", "Seelenkasten", "Teufelsstofftasche", "Kernteufelsstofftasche", "Schwarzschattentasche", "Abgr\195\188ndige Tasche"};
L["TITAN_BAG_PROF_BAG_ENCHANTING"] = {
"Enchanted Mageweave Pouch", "Enchanted Runecloth Bag", "Enchanter's Satchel", "Big Bag of Enchantment", "Spellfire Bag", 
"Mysterious Bag", "Otherworldly Bag", "\"Carriage - Exclusive\" Enchanting Evening Purse"};
L["TITAN_BAG_PROF_BAG_ENGINEERING"] = {
"Heavy Toolbox", "Fel Iron Toolbox", "Titanium Toolbox", "Khorium Toolbox", "Elementium Toolbox", "\"Carriage - Maddy\" High Tech Bag"};
L["TITAN_BAG_PROF_BAG_HERBALISM"] = {
"Herb Pouch", "Cenarion Herb Bag", "Satchel of Cenarius", "Mycah's Botanical Bag", "Emerald Bag", "Hyjal Expedition Bag",
"\"Carriage - Going Green\" Herb Tote Bag"};
L["TITAN_BAG_PROF_BAG_INSCRIPTION"] = {
"Scribe's Satchel", "Pack of Endless Pockets", "\"Carriage - Xandera\" Student's Satchel"};
L["TITAN_BAG_PROF_BAG_JEWELCRAFTING"] = {
"Gem Pouch", "Bag of Jewels", "\"Carriage - Exclusive\" Gem Studded Clutch"};
L["TITAN_BAG_PROF_BAG_LEATHERWORKING"] = {
"Leatherworker's Satchel", "Bag of Many Hides", "Trapper's Traveling Pack", "\"Carriage - Meeya\" Leather Bag"};
L["TITAN_BAG_PROF_BAG_MINING"] = {
"Mining Sack", "Reinforced Mining Bag", "Mammoth Mining Bag", "\"Carriage - Christina\" Precious Metal Bag"};
L["TITAN_BAG_PROF_BAG_FISHING"] = {"Lure Master Tackle Box"};
L["TITAN_BAG_PROF_BAG_COOKING"] = {"Portable Refrigerator"};

L["TITAN_CLOCK_TOOLTIP"] = "Uhr";
L["TITAN_CLOCK_TOOLTIP_VALUE"] = "Momentane Zeitverschiebung: ";
L["TITAN_CLOCK_TOOLTIP_LOCAL_TIME"] = "Lokale Zeit: ";
L["TITAN_CLOCK_TOOLTIP_SERVER_TIME"] = "Server-Zeit: ";
L["TITAN_CLOCK_TOOLTIP_SERVER_ADJUSTED_TIME"] = "Eingestellte Server-Zeit: ";
L["TITAN_CLOCK_TOOLTIP_HINT1"] = "Hinweis: Links-Klick um die Zeitverschiebung festzulegen"
L["TITAN_CLOCK_TOOLTIP_HINT2"] = "und zwischen dem 12/24 Stundenformat zu wechseln.";
L["TITAN_CLOCK_TOOLTIP_HINT3"] = "Shift Linksklick, um den Kalender ein- oder auszublenden.";
L["TITAN_CLOCK_CONTROL_TOOLTIP"] = "Zeitverschiebung in Stunden: ";
L["TITAN_CLOCK_CONTROL_TITLE"] = "Verschiebung";
L["TITAN_CLOCK_CONTROL_HIGH"] = "+12";
L["TITAN_CLOCK_CONTROL_LOW"] = "-12";
L["TITAN_CLOCK_CHECKBUTTON"] = "24Std Fmt";
L["TITAN_CLOCK_CHECKBUTTON_TOOLTIP"] = "Wechselt die Anzeige zwischen dem 12-Stunden und 24-Stunden Format.";
L["TITAN_CLOCK_MENU_TEXT"] = "Uhr";
L["TITAN_CLOCK_MENU_LOCAL_TIME"] = "Lokale Zeit anzeigen (L)"; 
L["TITAN_CLOCK_MENU_SERVER_TIME"] = "Serverzeit anzeigen (S)";
L["TITAN_CLOCK_MENU_SERVER_ADJUSTED_TIME"] = "Eingestellte Serverzeit anzeigen (A)";
L["TITAN_CLOCK_MENU_DISPLAY_ON_RIGHT_SIDE"] = "Ganz rechts anzeigen.";
L["TITAN_CLOCK_MENU_HIDE_GAMETIME"] = "Verstecke Zeit/Kalender-Knopf";
L["TITAN_CLOCK_MENU_HIDE_MAPTIME"] = "Verstecke Zeit-Knopf";
L["TITAN_CLOCK_MENU_HIDE_CALENDAR"] = "Verstecke Kalender-Knopf";

L["TITAN_LOCATION_FORMAT"] = "(%.d, %.d)";
L["TITAN_LOCATION_FORMAT2"] = "(%.1f, %.1f)";
L["TITAN_LOCATION_FORMAT3"] = "(%.2f, %.2f)";
L["TITAN_LOCATION_FORMAT_LABEL"] = "(xx , yy)";
L["TITAN_LOCATION_FORMAT2_LABEL"] = "(xx.x , yy.y)";
L["TITAN_LOCATION_FORMAT3_LABEL"] = "(xx.xx , yy.yy)";
L["TITAN_LOCATION_FORMAT_COORD_LABEL"] = "Koordinatenformat";
L["TITAN_LOCATION_BUTTON_LABEL"] = "Pos: ";
L["TITAN_LOCATION_TOOLTIP"] = "Info zur Position";
L["TITAN_LOCATION_TOOLTIP_HINTS_1"] = "Hinweis: Shift + Linksklick um die";
L["TITAN_LOCATION_TOOLTIP_HINTS_2"] = "momentane Position in den Chat einzuf\195\188gen.";-- Sensity
L["TITAN_LOCATION_TOOLTIP_ZONE"] = "Zone: ";
L["TITAN_LOCATION_TOOLTIP_SUBZONE"] = "Sub-Zone: ";
L["TITAN_LOCATION_TOOLTIP_PVPINFO"] = "PVP-Info: ";
L["TITAN_LOCATION_TOOLTIP_HOMELOCATION"] = "Heimatort: ";
L["TITAN_LOCATION_TOOLTIP_INN"] = "Gasthaus: ";
L["TITAN_LOCATION_MENU_TEXT"] = "Position";
L["TITAN_LOCATION_MENU_SHOW_ZONE_ON_PANEL_TEXT"] = "Zonentext in der Leiste anzeigen";
L["TITAN_LOCATION_MENU_SHOW_COORDS_ON_MAP_TEXT"] = "Koordinaten auf der Weltkarte anzeigen";
L["TITAN_LOCATION_MAP_CURSOR_COORDS_TEXT"] = "Mauszeiger (X,Y): %s";
L["TITAN_LOCATION_MAP_PLAYER_COORDS_TEXT"] = "Spieler (X,Y): %s";
L["TITAN_LOCATION_NO_COORDS"] = "Keine Koordinaten";
L["TITAN_LOCATION_MENU_SHOW_LOC_ON_MINIMAP_TEXT"] = "Zeige Gebutsname über der Minimap";
L["TITAN_LOCATION_MENU_UPDATE_WORLD_MAP"] = "Aktualisiere Weltkarte bei Zonenwechsel";
L["TITAN_LOCATION_MENU_MAP_COORDS_TITLE"] = "Coordinates Location on Map";
L["TITAN_LOCATION_MENU_MAP_COORDS_LOC_1"] = "Top Left";
L["TITAN_LOCATION_MENU_MAP_COORDS_LOC_2"] = "Top Right";
L["TITAN_LOCATION_MENU_MAP_COORDS_LOC_3"] = "Bottom Left";
L["TITAN_LOCATION_MENU_MAP_COORDS_LOC_4"] = "Bottom";
L["TITAN_LOCATION_MENU_MAP_COORDS_LOC_5"] = "Bottom Right";

L["TITAN_FPS_FORMAT"] = "%.2f";
L["TITAN_FPS_BUTTON_LABEL"] = "FPS: ";
L["TITAN_FPS_MENU_TEXT"] = "Bilder pro Sekunde (FPS)";
L["TITAN_FPS_TOOLTIP_CURRENT_FPS"] = "Momentan: ";
L["TITAN_FPS_TOOLTIP_AVG_FPS"] = "Durchschnitt: ";
L["TITAN_FPS_TOOLTIP_MIN_FPS"] = "Bisher Minimum: ";
L["TITAN_FPS_TOOLTIP_MAX_FPS"] = "Bisher Maximum: ";
L["TITAN_FPS_TOOLTIP"] = "Bilder pro Sekunde";

L["TITAN_LATENCY_FORMAT"] = "%d".."ms";
L["TITAN_LATENCY_BANDWIDTH_FORMAT"] = "%.1f ".."KB/s";
L["TITAN_LATENCY_BUTTON_LABEL"] = "Latenz: ";
L["TITAN_LATENCY_TOOLTIP"] = "Netzwerkstatus";
L["TITAN_LATENCY_TOOLTIP_LATENCY_HOME"] = "Realm-Latenz (Eigene): ";
L["TITAN_LATENCY_TOOLTIP_LATENCY_WORLD"] = "Spiel-Latenz (Spielwelt): ";
L["TITAN_LATENCY_TOOLTIP_BANDWIDTH_IN"] = "Bandbreite Eingang: ";
L["TITAN_LATENCY_TOOLTIP_BANDWIDTH_OUT"] = "Bandbreite Ausgang: ";
L["TITAN_LATENCY_MENU_TEXT"] = "Latenz";

L["TITAN_LOOTTYPE_BUTTON_LABEL"] = "Pl\195\188ndern: ";
L["TITAN_LOOTTYPE_FREE_FOR_ALL"] = "Jeder gegen Jeden (JGJ)";
L["TITAN_LOOTTYPE_ROUND_ROBIN"] = "Reihum";
L["TITAN_LOOTTYPE_MASTER_LOOTER"] = "Pl\195\188ndermeister";
L["TITAN_LOOTTYPE_GROUP_LOOT"] = "Pl\195\188ndern als Gruppe";
L["TITAN_LOOTTYPE_NEED_BEFORE_GREED"] = "Bedarf vor Gier";
L["TITAN_LOOTTYPE_PERSONAL"] = "Personal";
L["TITAN_LOOTTYPE_TOOLTIP"] = "Pl\195\188ndermethode";
L["TITAN_LOOTTYPE_MENU_TEXT"] = "Pl\195\188ndereinstellungen";
L["TITAN_LOOTTYPE_RANDOM_ROLL_LABEL"] = "W\195\188rfelwurf";
L["TITAN_LOOTTYPE_TOOLTIP_HINT1"] = "Hinweis: Links-Klick f\195\188r W\195\188rfelwurf.";
L["TITAN_LOOTTYPE_TOOLTIP_HINT2"] = "Auswahl der W\195\188rfelmethode im Rrechtsklick-Men\195\188.";
L["TITAN_LOOTTYPE_DUNGEONDIFF_LABEL"] = "Dungeon-Schwierigkeit";
L["TITAN_LOOTTYPE_DUNGEONDIFF_LABEL2"] = "Schlachtzug-Schwierigkeit";
L["TITAN_LOOTTYPE_SHOWDUNGEONDIFF_LABEL"] = "Zeige Dungeon-/Schlachtzug-Schwierigkeit";
L["TITAN_LOOTTYPE_SETDUNGEONDIFF_LABEL"] = "Lege Dungeon-Schwierigkeit fest";
L["TITAN_LOOTTYPE_SETRAIDDIFF_LABEL"] = "Lege Schlachtzugschwierigkeit fest";
L["TITAN_LOOTTYPE_AUTODIFF_LABEL"] = "Auto (gruppenbasiert)";

L["TITAN_MEMORY_FORMAT"] = "%.1f".."MB";
L["TITAN_MEMORY_FORMAT_KB"] = "%d".."KB";
L["TITAN_MEMORY_RATE_FORMAT"] = "%.1f".."KB/s";
L["TITAN_MEMORY_BUTTON_LABEL"] = "Speicher: ";
L["TITAN_MEMORY_TOOLTIP"] = "Script Speichernutzung";
L["TITAN_MEMORY_TOOLTIP_CURRENT_MEMORY"] = "Momentan: ";
L["TITAN_MEMORY_TOOLTIP_INITIAL_MEMORY"] = "Anf\195\164nglich: ";
L["TITAN_MEMORY_TOOLTIP_INCREASING_RATE"] = "Steigerungsrate: ";
L["TITAN_MEMORY_KBMB_LABEL"] = "KB/MB";

L["TITAN_PERFORMANCE_TOOLTIP"] = "Leistung";
L["TITAN_PERFORMANCE_MENU_TEXT"] = "Leistung";
L["TITAN_PERFORMANCE_ADDONS"] = "Addon Nutzung";
L["TITAN_PERFORMANCE_ADDON_MEM_USAGE_LABEL"] = "Addon Speicher Verbrauch";
L["TITAN_PERFORMANCE_ADDON_MEM_FORMAT_LABEL"] = "Addon Speicher Format";
L["TITAN_PERFORMANCE_ADDON_CPU_USAGE_LABEL"] = "Addon CPU-Nutzung";
L["TITAN_PERFORMANCE_ADDON_NAME_LABEL"] = "Name:";
L["TITAN_PERFORMANCE_ADDON_USAGE_LABEL"] = "Verbrauch";
L["TITAN_PERFORMANCE_ADDON_RATE_LABEL"] = "Rate";
L["TITAN_PERFORMANCE_ADDON_TOTAL_MEM_USAGE_LABEL"] = "Gesamt Addon Speichernutzung:";
L["TITAN_PERFORMANCE_ADDON_TOTAL_CPU_USAGE_LABEL"] = "Gesamt CPU-Leistung:";
L["TITAN_PERFORMANCE_MENU_SHOW_FPS"] = "Zeige FPS";
L["TITAN_PERFORMANCE_MENU_SHOW_LATENCY"] = "Zeige Latenz";
L["TITAN_PERFORMANCE_MENU_SHOW_LATENCY_WORLD"] = "Zeige Spielwelt-Latenz";
L["TITAN_PERFORMANCE_MENU_SHOW_MEMORY"] = "Zeige Speicher";
L["TITAN_PERFORMANCE_MENU_SHOW_ADDONS"] = "Zeige Addon Speicher Verbrauch";
L["TITAN_PERFORMANCE_MENU_SHOW_ADDON_RATE"] = "Zeige Addon Verbrauchs-Rate";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL"] = "CPU Profiling-Modus";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_ON"] = "CPU Profiling-Modus einschalten ";
L["TITAN_PERFORMANCE_MENU_CPUPROF_LABEL_OFF"] = "CPU Profiling-Modus abschalten ";
L["TITAN_PERFORMANCE_CONTROL_TOOLTIP"] = "\195\156berwachte Addons: ";
L["TITAN_PERFORMANCE_CONTROL_TITLE"] = "\195\156berwachte Addons";
L["TITAN_PERFORMANCE_CONTROL_HIGH"] = "40";
L["TITAN_PERFORMANCE_CONTROL_LOW"] = "1";
L["TITAN_PERFORMANCE_TOOLTIP_HINT"] = "Hinweis: Links-Klick f\195\188r eine Speicherbereinigung.";

L["TITAN_XP_FORMAT"] = "%s";
L["TITAN_XP_PERCENT_FORMAT"] = "(%.1f%%)";
L["TITAN_XP_BUTTON_LABEL_XPHR_LEVEL"] = "XP/Std (Level): ";
L["TITAN_XP_BUTTON_LABEL_XPHR_SESSION"] = "XP/Std (Sitzung): ";
L["TITAN_XP_BUTTON_LABEL_TOLEVEL_TIME_LEVEL"] = "Zeit bis Aufstieg: ";
L["TITAN_XP_LEVEL_COMPLETE"] = "Level komplett: ";
L["TITAN_XP_TOTAL_RESTED"] = "Ausgeruht: ";
L["TITAN_XP_XPTOLEVELUP"] = "XP bis Levelaufstieg: ";
L["TITAN_XP_TOOLTIP"] = "Info XP";
L["TITAN_XP_TOOLTIP_TOTAL_TIME"] = "Spielzeit Gesamt: ";
L["TITAN_XP_TOOLTIP_LEVEL_TIME"] = "Spielzeit dieses Levels: ";
L["TITAN_XP_TOOLTIP_SESSION_TIME"] = "Spielzeit dieser Sitzung: ";
L["TITAN_XP_TOOLTIP_TOTAL_XP"] = "Gesamt XP dieses Levels: ";
L["TITAN_XP_TOOLTIP_LEVEL_XP"] = "XP erhalten dieses Levels: ";
L["TITAN_XP_TOOLTIP_TOLEVEL_XP"] = "XP ben\195\182tigt bis Aufstieg: ";
L["TITAN_XP_TOOLTIP_SESSION_XP"] = "XP erhalten diese Sitzung: ";
L["TITAN_XP_TOOLTIP_XPHR_LEVEL"] = "XP/Std dieses Levels: ";
L["TITAN_XP_TOOLTIP_XPHR_SESSION"] = "XP/Std dieser Sitzung: ";
L["TITAN_XP_TOOLTIP_TOLEVEL_LEVEL"] = "Zeit bis Aufstieg (Levelrate): ";
L["TITAN_XP_TOOLTIP_TOLEVEL_SESSION"] = "Zeit bis Aufstieg (Sitzungsrate): ";
L["TITAN_XP_MENU_TEXT"] = "XP";
L["TITAN_XP_MENU_SHOW_XPHR_THIS_LEVEL"] = "Zeige XP/Std dieses Levels";
L["TITAN_XP_MENU_SHOW_XPHR_THIS_SESSION"] = "Zeige XP/Std dieser Sitzung";
L["TITAN_XP_MENU_SHOW_RESTED_TOLEVELUP"] = "Zeige Multi-Info-Ansicht";
L["TITAN_XP_MENU_SIMPLE_BUTTON_TITLE"] = "Schaltfl\195\164che";
L["TITAN_XP_MENU_SIMPLE_BUTTON_RESTED"] = "Zeige XP (ausgeruht)";
L["TITAN_XP_MENU_SIMPLE_BUTTON_TOLEVELUP"] = "Zeige XP bis Levelaufstieg";
L["TITAN_XP_MENU_SIMPLE_BUTTON_KILLS"] = "Zeige ben\195\182tigte Monsterkills bis Levelaufstieg";
L["TITAN_XP_MENU_RESET_SESSION"] = "Session Zur\195\188cksetzen";
L["TITAN_XP_MENU_REFRESH_PLAYED"] = "Z\195\164hler zur\195\188cksetzen";
L["TITAN_XP_UPDATE_PENDING"] = "Aktualisiere...";
L["TITAN_XP_KILLS_LABEL"] = "Monsterkills bis Levelaufstieg (bei %s XP Durchschnitt): ";
L["TITAN_XP_KILLS_LABEL_SHORT"] = "Ca. Monsterkills: ";
L["TITAN_XP_BUTTON_LABEL_SESSION_TIME"] = "Sitzungszeit: ";
L["TITAN_XP_MENU_SHOW_SESSION_TIME"] = "Zeige Sitzungszeit";
L["TITAN_XP_GAIN_PATTERN"] = "(.*) stirbt, Ihr bekommt (%d+) Erfahrung.";
L["TITAN_XP_XPGAINS_LABEL_SHORT"] = "Ca. XP-Boni: ";
L["TITAN_XP_XPGAINS_LABEL"] = "XP-Boni bis Levelaufstieg (bei %s XP zuletzt): ";
L["TITAN_XP_MENU_SIMPLE_BUTTON_XPGAIN"] = "Zeige ungef\195\164hre XP Boni bis zum Levelaufstieg";

L["TITAN_REGEN_MENU_TEXT"] = "Regeneration"
L["TITAN_REGEN_MENU_TOOLTIP_TITLE"]     = "Regenerationsrate"
L["TITAN_REGEN_MENU_SHOW2"] = "HP"
L["TITAN_REGEN_MENU_SHOW3"] = "MP"
L["TITAN_REGEN_MENU_SHOW4"] = "Als Prozentsatz"
L["TITAN_REGEN_BUTTON_TEXT_HP"] = "HP: "
L["TITAN_REGEN_BUTTON_TEXT_MP"] = " MP: "
L["TITAN_REGEN_TOOLTIP1"] = "Gesundheit: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
L["TITAN_REGEN_TOOLTIP2"] = "Mana: \t"..GREEN_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." / " ..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..RED_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE..")";
L["TITAN_REGEN_TOOLTIP3"] = "Beste HP Regeneration: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
L["TITAN_REGEN_TOOLTIP4"] = "Schlechteste HP Regeneration: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
L["TITAN_REGEN_TOOLTIP5"] = "Beste MP Regeneration: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
L["TITAN_REGEN_TOOLTIP6"] = "Schlechteste MP Regeneration: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE;
L["TITAN_REGEN_TOOLTIP7"] = "MP Regeneration im letzten Kampf: \t"..HIGHLIGHT_FONT_COLOR_CODE.."%d"..FONT_COLOR_CODE_CLOSE.." ("..GREEN_FONT_COLOR_CODE.."%.2f"..FONT_COLOR_CODE_CLOSE.."%%)";

--Titan Repair
L["REPAIR_LOCALE"] = {
	menu = "Reparieren",
	tooltip = "Haltbarkeits-Info",
	button = "Haltbarkeit: ",
	normal = "Reparaturkosten (Normal): ",
	friendly = "Reparaturkosten (freundlich): ",
	honored = "Reparaturkosten (wohlwollend): ",
	revered = "Reparaturkosten (respektvoll): ",
	exalted = "Reparaturkosten (ehrf\195\188rchtig): ",
	buttonNormal = "Zeige normal",
	buttonFriendly = "Zeige freundlich (5%)",
	buttonHonored = "Zeige wohlwollend (10%)",
	buttonRevered = "Zeige respektvoll (15%)",
	buttonExalted = "Zeige ehrf\195\188rchtig (20%)",
	percentage = "Prozent anzeigen",
	itemnames = "Zeige Gegenstandsnamen an",
	mostdamaged = "Zeige die am meisten besch\195\164digten an",
	showdurabilityframe = "Zeige Haltbarkeits-Inforahmen",
	undamaged = "Unbesch\195\164digte Gegenst\195\164nde anzeigen",
	discount = "Rabatt",
	nothing = "Nichts besch\195\164digt",
	confirmation = "Wollt Ihr alles reparieren lassen?",
	badmerchant = "Dieser H/195/164/ndler kann nicht reparieren. Es werden nur normale Reparaturkosten angezeigt.",
	popup = "Zeige Reparieren-Popup",
	showinventory = "Kalkuliere Inventar-Besch\195\164digung",
	WholeScanInProgress = "Aktualisiere...",
	AutoReplabel = "Automatische Reparatur",
	AutoRepitemlabel = "Automatische Reparatur aller Gegenst\195\164nde",
	ShowRepairCost = "Zeige Reparaturkosten",
	ignoreThrown = "Ignoriere Wurfwaffen",
	ShowItems = "Zeige Gegenst\195\164nde an",
	ShowDiscounts = "Zeige Rabatte an",
	ShowCosts = "Zeige Kosten an",
	Items = "Gegenst\195\164nde",
	Discounts = "Rabatte",
	Costs = "Kosten",
	CostTotal = "Gesamtkosten",
	CostBag = "Taschenbasierte Kosten",
	CostEquip = "Kosten f\195\188r angelegte Gegenst\195\164nde",
	TooltipOptions = "Tooltip",
};
L["TITAN_REPAIR"] = "Titan Classic Repair"
L["TITAN_REPAIR_CANNOT_AFFORD"] = "Du kannst es Dir momentan nicht leisten, deine Gegenst\195\164nde zu reparieren."
L["TITAN_REPAIR_REPORT_COST_MENU"] = "Schreibe Reparaturkosten in den Chat"
L["TITAN_REPAIR_REPORT_COST_CHAT"] = "Die Reparaturkosten betrugen "

L["TITAN_GOLD_TOOLTIPTEXT"] = "Gesamtes Gold auf";
L["TITAN_GOLD_ITEMNAME"] = "Titan Gold";
L["TITAN_GOLD_CLEAR_DATA_TEXT"] = "L\195\182sche Datenbank";
L["TITAN_GOLD_RESET_SESS_TEXT"] = "Sitzung zur\195\188cksetzen";
L["TITAN_GOLD_DB_CLEARED"] = "Titan Gold - Datenbank gel\195\182scht.";
L["TITAN_GOLD_SESSION_RESET"] = "Titan Gold - Sitzung zur\195\188ck gesetzt.";
L["TITAN_GOLD_MENU_TEXT"] = "Gold";
L["TITAN_GOLD_TOOLTIP"] = "Gold-Info";
L["TITAN_GOLD_TOGGLE_PLAYER_TEXT"] = "Zeige Spielercharakter-Gold";
L["TITAN_GOLD_TOGGLE_ALL_TEXT"] = "Zeige Gold aller Spielercharaktere auf diesem Server";
L["TITAN_GOLD_SESS_EARNED"] = "Eingenommen in der Sitzung";
L["TITAN_GOLD_PERHOUR_EARNED"] = "Eingenommen pro Stunde";
L["TITAN_GOLD_SESS_LOST"] = "Ausgegeben in der Sitzung";
L["TITAN_GOLD_PERHOUR_LOST"] = "Ausgegeben pro Stunde";
L["TITAN_GOLD_STATS_TITLE"] = "Sitzungsstatistik";
L["TITAN_GOLD_TTL_GOLD"] = "Gesamtes Gold";
L["TITAN_GOLD_START_GOLD"] = "Anf\195\164ngliches Gold";
L["TITAN_GOLD_TOGGLE_SORT_GOLD"] = "Sortiere Tabelle nach Gold";
L["TITAN_GOLD_TOGGLE_SORT_NAME"] = "Sortiere Tabelle nach Name";
L["TITAN_GOLD_TOGGLE_GPH_SHOW"] = "Zeige Gold pro Stunde";
L["TITAN_GOLD_TOGGLE_GPH_HIDE"] = "Verberge Gold pro Stunde";
L["TITAN_GOLD_GOLD"] = "G";
L["TITAN_GOLD_SILVER"] = "S";
L["TITAN_GOLD_COPPER"] = "K";
L["TITAN_GOLD_STATUS_PLAYER_SHOW"] = "Sichtbar";
L["TITAN_GOLD_STATUS_PLAYER_HIDE"] = "Verborgen";
L["TITAN_GOLD_DELETE_PLAYER"] = "Spielercharaktergoldinfo l\195\182schen";
L["TITAN_GOLD_SHOW_PLAYER"] = "Zeige Spielercharaktergoldinfo";
L["TITAN_GOLD_FACTION_PLAYER_ALLY"] = "Allianz";
L["TITAN_GOLD_FACTION_PLAYER_HORDE"] = "Horde";
L["TITAN_GOLD_CLEAR_DATA_WARNING"] = GREEN_FONT_COLOR_CODE.."Warnung: "
..FONT_COLOR_CODE_CLOSE.."Diese Einstellung l\195\182scht die TitanGold-Datenbank. "
.."Wenn Du diese Aktion durchf\195\188hren willst, klicke auf 'Best\195\164tigen', anderenfalls auf 'Abbrechen' oder dr\195\188cke die ESC-Taste.";
L["TITAN_GOLD_COIN_NONE"] = "Zeige keine Labels";
L["TITAN_GOLD_COIN_LABELS"] = "Zeige Text Labels";
L["TITAN_GOLD_COIN_ICONS"] = "Zeige Icon Labels";
L["TITAN_GOLD_ONLY"] = "Zeige nur Gold";
L["TITAN_GOLD_COLORS"] = "Zeige Gold (und Bruchteil)-Farben";
L["TITAN_GOLD_MERGE"] = "Zusammengelegte Servers";
L["TITAN_GOLD_SEPARATE"] = "Getrennte Servers";

L["TITAN_VOLUME_TOOLTIP"] = "Lautst\195\164rke einstellen";
L["TITAN_VOLUME_MASTER_TOOLTIP_VALUE"] = "Momentane Gesamtlautst\195\164rke: ";
L["TITAN_VOLUME_SOUND_TOOLTIP_VALUE"] = "Momentane Effektlautst\195\164rke: ";
L["TITAN_VOLUME_AMBIENCE_TOOLTIP_VALUE"] = "Momentane Umgebungslautst\195\164rke: ";
L["TITAN_VOLUME_DIALOG_TOOLTIP_VALUE"] = "Dialog Sound Volume: ";
L["TITAN_VOLUME_MUSIC_TOOLTIP_VALUE"] = "Momentane Musiklautst\195\164rke: ";
L["TITAN_VOLUME_MICROPHONE_TOOLTIP_VALUE"] = "Momentane Mikrofonlautst\195\164rke: ";
L["TITAN_VOLUME_SPEAKER_TOOLTIP_VALUE"] = "Momentane Lautsprecherlaust\195\164rke: ";
L["TITAN_VOLUME_TOOLTIP_HINT1"] = "Hinweis: Links-Klick um die";
L["TITAN_VOLUME_TOOLTIP_HINT2"] = "Lautst\195\164rken anzupassen.";
L["TITAN_VOLUME_CONTROL_TOOLTIP"] = "Lautst\195\164rke: ";
L["TITAN_VOLUME_CONTROL_TITLE"] = "Lautst\195\164rke";
L["TITAN_VOLUME_MASTER_CONTROL_TITLE"] = "Gesamt";
L["TITAN_VOLUME_SOUND_CONTROL_TITLE"] = "Effekte";
L["TITAN_VOLUME_AMBIENCE_CONTROL_TITLE"] = "Umgebung";
L["TITAN_VOLUME_DIALOG_CONTROL_TITLE"] = "Dialog";
L["TITAN_VOLUME_MUSIC_CONTROL_TITLE"] = "Musik";
L["TITAN_VOLUME_MICROPHONE_CONTROL_TITLE"] = "Mikrofon";
L["TITAN_VOLUME_SPEAKER_CONTROL_TITLE"] = "Lautsprecher";
L["TITAN_VOLUME_CONTROL_HIGH"] = "Laut";
L["TITAN_VOLUME_CONTROL_LOW"] = "Leise";
L["TITAN_VOLUME_MENU_TEXT"] = "Lautst\195\164rkeregler";
L["TITAN_VOLUME_MENU_AUDIO_OPTIONS_LABEL"] = "Zeige Audio-Optionen des Spiels an" ;
L["TITAN_VOLUME_MENU_OVERRIDE_BLIZZ_SETTINGS"] = "Ignoriere Die spieleseitigen Lautst\195\164rkeeinstellungen";
