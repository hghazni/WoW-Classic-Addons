﻿
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


function Natur_Local_esMX()
	
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
	NATUR_ROGUE_WARNING =			"Warning: Hostile Rogue [%s] nearby, %s detected!!";
	NATUR_APPLIED_SPELL =			"[%s] has been applied to [%s].";						-- [Shackle Undead] has been appled to [Skeletal Warrior].
	NATUR_BREAK_NORMAL =			"[%s] has broken on [%s].";								-- [Polymorph] has broken on [Afterlife].
	NATUR_SECONDS_TXT =				"[%s] breaks free in %d seconds.";						-- [Afterlife] breaks free in 10 seconds.
	NATUR_SPELL_MISSED1 =			"[%s] is %s to [%s].";									-- [Afterlife] is IMMUNE to [Polymorph].
	NATUR_SPELL_MISSED2 =			"[%s] has %s my [%s].";									-- [Afterlife] has RESISTED my [Polymorph].
	NATUR_SPELL_FADED =				"[%s] has faded from you!";
	NATUR_BOSS_FAILURE1 =			"Below is a list of players who failed on the last boss fight and how many times they failed:";
	NATUR_BOSS_FAILURE2 =			"[%s] failed '%s' %d time(s)";
	NATUR_BOSS_FAILURE3 =			"No failures recorded on last fight.";

	-- curse/disease/magic
	NATUR_SPELL_DEBUFF =			"%s is %s with %s";										-- Afterlife is CURSED with Life Drain	
	
	-- Auto Reputation bar.
	NATUR_REPUTATION_PARSE_TXT =	"Reputation with (.+) increased by (%d+).";
	NATUR_AUTOREPBAR =				"|cff00e0ffNatur : |cffffffffReputation bar changed to ";	
	
end;


