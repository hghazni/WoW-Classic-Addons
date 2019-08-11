
--[[

		$title:			Natur Enemy Castbar
		$author:		Michael Boyle (Softrix)
		$email:			michael.boyle@softrix.co.uk
		$website:		www.softrix.co.uk
		
		$build:			50400R1	22/02/2014
		
		$credits:		This Natur Enemy Castbar is a complete rewrite based on the 
						excellent discontinued addon by Naturfreund.

						Credits also go to Shadowed who is the author of the GTB bar 
						library which I	have modified for this addon.  The original 
						unmodified GTB library for the purpose of these credits is at:
						
						http://www.wowinterface.com/downloads/info10204-GTB-1.0.html
						
						I was going to write my own bar routines until i came across
						his excellent library.. why re-invent the wheel as they say!
						
						Updated to 5.4 (50400 R2)
						
		
]]--

-- storage area for cc spells.
Natur_CCMonitoredTargets = {};

Natur_CCSpellsSupported = {

	{9484, 30}, {9485, 40}, {10955, 50},						-- shackle undead.
	{605, 60}, {10911, 60}, {10912, 60},						-- mind control.
	{6358, 15},													-- suduction
	{1098, 300}, {11725, 300}, {11726, 300}, {61191, 300},		-- enslave demon
	{710, 20}, {18647, 30},										-- banish
	{5782, 10}, {6213, 15}, {6215, 20},							-- fear
	{118, 20}, {12824, 30}, {12825, 40},						-- polymorph 
	{12826, 50}, {28271, 50}, {28272, 50},						-- more polymorph
	{61305, 50}, {61025, 50}, {28271, 50},						-- more polymorph
	{2637, 20}, {18657, 30}, {18658, 40},						-- hybernate
	{339, 12}, {1062, 15}, {5195, 18}, {5196, 21},				-- entangling roots
	{9852, 24}, {9853, 27}, {26989, 27}, {53308, 27},			-- more entangling roots
	{33786, 6},													-- cyclone
	{1499, 10}, {14310, 15}, {14311, 20},						-- freezing trap
	{14308, 15}, {14309, 20},									-- more freezing trap
	{60192, 20}, {60210, 20},									-- freezing arrow
	{6770, 25}, {2070, 35}, {11297, 45}, {51724, 60},			-- sap
	{2094, 10},													-- blind
	{20066, 60},												-- repentance
	{51514, 30},												-- hex
	{115078, 40}												-- Paralysis	(40 in front, 60 if behind - need to find a way of detecting this?? - left at worst scenerio for now - MB 22/2/2014)
						
};

--
--	Log a cc ive cast
--
function Natur_LogCCTarget(mobsid, mobsname, casterid, castername, firetime, spellname)
	-- cleanup any old expired shit.
	Natur_CleanupCCTargets();
	Natur_DeleteCCTarget(mobsid, spellname);	-- if it exists already, delete it.
	tinsert(Natur_CCMonitoredTargets, {mobsid, mobsname, casterid, castername, firetime, spellname});
end;

--
--	Announce a target has broken
--
function Natur_AnnounceCCTarget(mobsid, spellname)
	for count,value in ipairs(Natur_CCMonitoredTargets) do
		if(value[1] == mobsid and value[6] == spellname) then
			tremove(Natur_CCMonitoredTargets, count);		-- remove it.
			Natur_SetPartyStatus();
			local msg = string.format(NATUR_BREAK_NORMAL, value[6], value[2]);
			if(not(Natur_ChatDestination == 0)) then SendChatMessage(msg, Natur_ChatDestination); end;
			if(Natur_AccountOptions[117]) then PlaySoundFile(Natur_CCBreakSound); end;
			if(Natur_AccountOptions[118]) then Natur_UIFlash(); end;
			return(true);	-- ive announced.
		end;
	end;
	return(false);			-- not found.	
end;

--
--	Remove Expired (simple cleanup if mobs out of range)
--
function Natur_CleanupCCTargets()
	for count,value in ipairs(Natur_CCMonitoredTargets) do
		local castTime = value[5];
		local timeNow = GetTime();
		local totaDur = timeNow - castTime;
		if(totaDur > 300) then		-- 5 mins.	
			tremove(Natur_CCMonitoredTargets, count);
		end;
	end;
end;

--
--	Remove a CC Entry
--
function Natur_DeleteCCTarget(mobsid, spellname)
	for count,value in ipairs(Natur_CCMonitoredTargets) do
		if(value[1] == mobsid and value[6] == spellname) then
			tremove(Natur_CCMonitoredTargets, count);
			return(true);
		end;
	end;
	return(false);
end;
