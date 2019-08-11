
--[[

		$title:			Natur Enemy Castbar
		$author:		Michael Boyle (Softrix)
		$email:			michael.boyle@softrix.co.uk
		$website:		www.softrix.co.uk
		
		$build:			60000	22/10/2014
		
		$credits:		This Natur Enemy Castbar is a complete rewrite based on the 
						excellent discontinued addon by Naturfreund.

						Credits also go to Shadowed who is the author of the GTB bar 
						library which I	have modified for this addon.  The original 
						unmodified GTB library for the purpose of these credits is at:
						
						http://www.wowinterface.com/downloads/info10204-GTB-1.0.html
						
						I was going to write my own bar routines until i came across
						his excellent library.. why re-invent the wheel as they say!
						
						Updated to 6.0 (60000-R1)
						
		
]]--


--		German (thx to Tyailae for translation)


function Natur_Local_deDE()
	
	-- group titles
	PRIMARY_GROUP_TITLE =			"Natur Enemy Castbar";
	HOSTILE_CASTS_TITLE =			"Hostile Casts";
	TF_GAINS_TITLE =				"Target Buffs";
	TF_DEBUFF_TITLE =				"Target Debuffs";
	PLR_GAINS_TITLE =				"Player Buffs";
	PLR_DEBUFF_TITLE =				"Player Debuffs";
	PLR_COOLDOWNS_TITLE =			"Player Cooldowns";
	COOLDOWNS_TITLE =				"Target Cooldowns";
	FRIENDLY_CASTS_TITLE =			"Friendly Casts";
	DIMINISH_RETURNS_TITLE =		"Diminish Returns";
	CROWDCONTROL_TITLE =			"Crowd Controls";
	
	-- Announces.
	NATUR_ROGUE_WARNING =			"Achtung: Feindlicher Schurke [%s] in der Nähe, %s entdeckt!!";
	NATUR_APPLIED_SPELL =			"[%s] wurde gewirkt auf[%s].";							-- [Untote fesseln] wurde gewirkt auf [Skelettkrieger].
	NATUR_BREAK_NORMAL =			"[%s] ist gebrochen von[%s].";							-- [Verwandeln] ist gebrochen von [Afterlife].
	NATUR_SECONDS_TXT =				"[%s] bricht aus in %d Sekunden.";						-- [Afterlife] bricht aus in 10 Sekunden.
	NATUR_SPELL_MISSED1 =			"[%s] ist %s gegen [%s].";								-- [Afterlife] ist IMMUN gegen [Verwandeln].
	NATUR_SPELL_MISSED2 =			"[%s] hat [%s] %s.";									-- [Afterlife] hat [Verwandeln] WIDERSTANDEN.
	NATUR_SPELL_FADED =				"[%s] schwindet von Euch!";
	NATUR_BOSS_FAILURE1 =			"Unterhalb ist eine Liste der Spieler, welche im letzten Bosskampf gefallen sind und wie oft sie gefallen sind:";
	NATUR_BOSS_FAILURE2 =			"[%s] fiel bei '%s' %d Mal";
	NATUR_BOSS_FAILURE3 =			"Keine Tode beim letzten Kampf registriert.";

	-- curse/disease/magic
	NATUR_SPELL_DEBUFF =			"%s wurde %s mit %s";										-- Afterlife wurde VERFLUCHT mit Lebensentzug	
	
	-- Auto Reputation bar.
	NATUR_REPUTATION_PARSE_TXT =	"Euer Ruf bei der Fraktion '(.+)' hat sich um (%d+) verbessert.";
	NATUR_AUTOREPBAR =				"|cff00e0ffNatur : |cffffffffRufleiste gewechselt zu ";	
	
end;



