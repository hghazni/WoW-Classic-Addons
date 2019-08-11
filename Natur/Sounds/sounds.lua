
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


Natur_QuakeSND = {
	-- Male
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Male\\dominating.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Male\\firstblood.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Male\\godlike.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Male\\killingspree.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Male\\monsterkill.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Male\\unstoppable.ogg",
	-- Female
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Female\\dominating.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Female\\firstblood.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Female\\godlike.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Female\\killingspree.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Female\\monsterkill.ogg",
	"Interface\\AddOns\\Natur\\Sounds\\Quake\\Female\\unstoppable.ogg"
};

-- other sounds.    
Natur_SpellImmuneSND = "Interface\\AddOns\\Natur\\Sounds\\Other\\immune.ogg";
Natur_CCBreakSound = "Interface\\AddOns\\Natur\\Sounds\\Other\\ccbreak.ogg";
Natur_MenuClickSound = "Interface\\AddOns\\Natur\\Sounds\\Other\\menuclick.ogg";
Natur_RogueWarnSound = "Interface\\AddOns\\Natur\\Sounds\\Other\\rogue.ogg";				
Natur_FinishHim = "Interface\\AddOns\\Natur\\Sounds\\Other\\finish-him.ogg";				
Natur_FinishHer = "Interface\\AddOns\\Natur\\Sounds\\Other\\finish-her.ogg";
Natur_GetOverHere = "Interface\\AddOns\\Natur\\Sounds\\Other\\getoverhere.ogg";
Natur_ComeHere = "Interface\\AddOns\\Natur\\Sounds\\Other\\comehere.ogg";
Natur_PlayerBuffLost = "Interface\\AddOns\\Natur\\Sounds\\Other\\bufflost.ogg";
				
--Natur_PaladinBubble = "Interface\\AddOns\\Natur\\Sounds\\Other\\laugh.ogg";					-- future use


--
--		$title:			Natur_FunPVPSounds()
--		$purpose:		Play a fun quake sound depending on duration
--						of your last kill(s).
--		$args:			guid of mob im attacking
--		$returns:		None
--
function Natur_QuakeSounds(guid)
	-- male or female?
	if(Natur_AccountOptions[128] == "Female") then Natur_SndOffset = 6; else Natur_SndOffset = 0; end;
	if(Natur_IsUnitPlayer(guid) and Natur_AccountOptions[127] or Natur_AccountOptions[117] and Natur_AccountOptions[129]) then	
		if (not Natur_killing_timer or (GetTime() - Natur_killing_timer >= 60) ) then
			PlaySoundFile(Natur_QuakeSND[2+Natur_SndOffset]);
			Natur_killing_counter = 0;
		else
			Natur_killing_counter = Natur_killing_counter + 1;
			if (Natur_killing_counter == 1) then
				PlaySoundFile(Natur_QuakeSND[1+Natur_SndOffset]);
			elseif (Natur_killing_counter == 2) then
				PlaySoundFile(Natur_QuakeSND[4+Natur_SndOffset]);
			elseif (Natur_killing_counter == 3) then
				PlaySoundFile(Natur_QuakeSND[6+Natur_SndOffset]);
			elseif (Natur_killing_counter == 4) then
				PlaySoundFile(Natur_QuakeSND[5+Natur_SndOffset]);
			elseif (Natur_killing_counter > 4) then
				PlaySoundFile(Natur_QuakeSND[3+Natur_SndOffset]);
			end;		
		end;
		Natur_killing_timer = GetTime();
	end;
end;


--
--		$title:			Natur_ProcessCombo()
--		$purpose:		Play a fun mortal kombat 'finish him/her' sound
--						on 5/5 combo points.
--		$args:			None
--		$returns:		None
--
Natur_LastFinishSnd = nil;
function Natur_ProcessCombo()
	-- read combo points on player (always for other parts of the addon).
	Natur_PlayerCombos = GetComboPoints("player");
	if(Natur_AccountOptions[134]) then	-- want the sound when i get max combo?
		-- only play if my target is a player?
		if(UnitIsPlayer("target") or Natur_AccountOptions[135]) then
			if(Natur_PlayerCombos == 5 and not(Natur_LastFinishSnd)) then
				-- we've got full combo points on this target.
				Natur_LastFinishSnd = UnitGUID("target");
				-- need to check sex here and play correct sound
				local targetSex = UnitSex("target");
				if(targetSex == 3) then		-- is target a female?
					PlaySoundFile(Natur_FinishHer);
				else						-- nope male or unknown
					PlaySoundFile(Natur_FinishHim);
				end;
			else
				Natur_LastFinishSnd = nil;
			end;
		end;
	end;
end;
