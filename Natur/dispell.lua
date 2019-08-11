
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



--[[

	### TEST CODE
	
	This is code im working on which monitors boss curses, diseases etc
	and atm informs the raid who needs them dispelled.
	
	It will be improved to show in a small window on the raid leaders
	screen so that he/she can announce this on vent or ts for ie. mages
	to quickly dispell and/or announce to raid.
	
	type /natur naxx to toggle on/off

]]--


-- if true we will monitor naxx boss abilities.  this is the
-- default value when addon is loaded and is adjusted by the
-- /natur naxx command in game.
Natur_DispellSetting = false;

--
--	Holds lists of boss spells and abilities i'd like to inform group of
--	such as Sapphiron's "Life Drain" curse. 
Natur_DispellListing = {

	-- Naxxramas
	{28542, "CURSED", true, "RAID"},					-- Sapphiron's "Life Drain"
	{55665, "CURSED", true, "RAID"},				
	{29213, "CURSED", true, "RAID"},					-- Noth the Plaguebringer's "Curse of the Plaguebringer"
	{54835, "CURSED", true, "RAID"},				
	{29998, "DISEASED", true, "RAID"},					-- Heigan the Unclean's "Decrepit Fever" Desease
	{55011, "DISEASED", true, "RAID"},				
	{28776, "POISONED", true, "RAID"},					-- Maexxna's "Necrotic Poison"
	{54121, "POISONED", true, "RAID"},				
	{28169, "DISEASED", true, "RAID_WARNING"},			-- Grobbulus Mutating Injection
	
	--{61903, "DESEASED", true, "RAID_WARNING"}
};

--
--	Check if this is a monitored spell from a boss?
--
function Natur_CheckDispell(spellid, spellname, playername)
	if(Natur_DispellSetting) then
		for count,value in ipairs(Natur_DispellListing) do
			if(value[1] == spellid and value[3]) then
				-- this is a boss spell i want to announce
				local msg = string.format(NATUR_SPELL_DEBUFF, playername, value[2], spellname);
				if(not(Natur_ChatDestination == 0)) then SendChatMessage(msg, value[4]); end;
				return(true);
			end;
		end;
	end;
end;