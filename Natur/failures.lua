


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
	
	This is the start of failure announcements letting the raid know
	when a player in the group has failed on something he should be
	doing, a good example which is included for testing is the OS
	fire wall called 'Flame Tsunami' where players need to avoid by
	passing through the gap in the wall.
	
	/natur fail will toggle this on/off
	
	More bosses will be added later.

]]--


-- on by default
Natur_MonitorPlayerFailures = false;

-- storage for players who have failed.
Natur_PlayersFailed = {};

-- list of spells/abilities i want to announce
-- when someone fails!
Natur_failureSpells = {
	
	{57491, "[%s] failed on the Flame Tsunami!", "Flame Tsunami"}				-- Sartharion's Flame Tsunami
	
};	


--
--	Check if this is a failure from a boss?
--
function Natur_CheckRaidFailure(spellid, playername, firetime)
	for count,value in ipairs(Natur_failureSpells) do
		if(value[1] == spellid) then
			-- this is a boss failure i want to announce and store.
			local msg = string.format(value[2], playername);
			if(not(Natur_CheckPlayerFailure(playername))) then
				-- its the first failure for this player, write the
				-- initial table entry.
				tinsert(Natur_PlayersFailed, {playername, firetime, 1, msg, value[3]});
			end;
			if(not(Natur_ChatDestination == 0)) then SendChatMessage(msg, Natur_ChatDestination); end;
			return(true);
		end;
	end;
end;

--
--	This player already failed before?
--
function Natur_CheckPlayerFailure(playername)
	for count,value in ipairs(Natur_PlayersFailed) do
		if(value[1] == playername) then
			local count = value[3];
			count = count + 1;
			value[3] = count;
			return(true);		-- hes here and updated.
		end;
	end;
	return(false);
end;


--
--	Show the failures  :D
--
function NaturShowPlayersFailed()
	local msg = 0; 
	-- lets show them
	local tableSize = #Natur_PlayersFailed;		-- grab how many entries?
	if(tableSize > 0) then						-- only if we have failures.
		if(not(Natur_ChatDestination == 0)) then SendChatMessage(NATUR_BOSS_FAILURE1, Natur_ChatDestination); end;	
		for count,value in ipairs(Natur_PlayersFailed) do
			msg = string.format(NATUR_BOSS_FAILURE2, value[1], value[5], value[3]);
			if(not(Natur_ChatDestination == 0)) then SendChatMessage(msg, Natur_ChatDestination); end;
		end;
	end;
end;
