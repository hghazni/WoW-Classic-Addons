
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



--
--	1.	spell id
--	2.	cooldown
--	3.	glyph
--	4.	crowd control
--	5.	diminish return
--	6.	warn (rogue)
--

--[[

	It is not possible to detect your targets glyphs or talents which would adjust
	these durations therefore the values below are base values.
	
	Michael.

]]--

Natur_AbilityInfo = {

	-- Priest
	{ 81700, 30, nil, false, false, false },					-- archangel
	{ 64843, 180, nil, false, false, false },					-- divine hymn
	{ 47788, 180, nil, false, false, false },					-- guardian spirit
	{ 88625, 30, nil, false, false, false },					-- holy word: chastise
	{ 126135, 180, nil, false, false, false },					-- lightwell
	{ 33206, 180, nil, false, false, false },					-- pain suppression
	{ 62618, 180, nil, false, false, false },					-- power word: barrier
	{ 109964, 60, nil, false, false, false },					-- spirit shell
	{ 89485, 45, nil, false, false, false },					-- inner focus
	{ 47585, 120, nil, false, false, false },					-- dispersion
	{ 8092, 8, nil, false, false, false },						-- mind blast
	{ 64044, 45, nil, false, false, false },					-- psychic horror
	{ 15487, 45, nil, false, false, false },					-- silence
	{ 15286, 180, nil, false, false, false },					-- vampiric embrace
	{ 14914, 10, nil, false, false, false },					-- holy fire
	{ 88685, 40, nil, false, false, false },					-- holy word: sanctuary
	{ 8122, 30, nil, false, false, false },						-- psychic scream
	{ 88684, 10, nil, false, false, false },					-- holy word: serenity
	{ 586, 30, nil, false, false, false },						-- fade
	{ 32379, 10, nil, false, false, false },					-- shadow word: death
	{ 6346, 180, nil, false, false, false },					-- fearward
	{ 64901, 360, nil, false, false, false },					-- hymn of hope
	{ 34433, 300, nil, false, false, false },					-- Shadowfiend
	{ 33076, 10, nil, false, false, false },					-- prayer of mending
	{ 73325, 90, nil, false, false, false },					-- Leap of faith
	
	-- warlock
	{ 48020, 45, nil, false, false, false },					-- demonic circle: teleport
	{ 5484, 40, nil, false, true, false },						-- howl of terror
	{ 29858, 120, nil, false, false, false },					-- soulshatter
	{ 6229, 30, nil, false, false, false },						-- twilight ward
	{ 6229, 30, nil, false, false, false },						-- shadow ward
	{ 6789, 45, nil, false, false, false },						-- mortal coil	
	{ 698, 120, nil, false, false, false },						-- ritual of summoning
	{ 47897, 20, nil, false, false, false },					-- demonic breath	
	{ 77801, 120, nil, false, false, false },					-- demon soul
	{ 5782, nil, nil, true, true, false },						-- fear
	{ 17962, 12, nil, false, false, false },					-- conflagrate
	{ 113858, 120, nil, false, false, false },					-- dark soul: instability
	{ 30283, 30, nil, false, false, false },					-- shadowfury
	{ 80240, 25, nil, false, false, false },					-- havoc
	{ 104773, 180, nil, false, false, false },					-- unending resolve
	
	-- shaman
	{ 73899, 8, nil, false, false, false },						-- primal strike
	{ 8042, 8, nil, false, false, false },						-- earthshock
	{ 8050, 6, nil, false, false, false },						-- flame shock
	{ 57994, 15, nil, false, false, false },					-- windshear
	{ 2484, 15, nil, false, false, false },						-- earthbind totem
	{ 8056, 6, nil, false, false, false },						-- frost shock
	{ 556, 45, nil, false, false, false },						-- astral recall
	{ 51505, 8, nil, false, false, false },						-- lava burst
	{ 8177, 25, nil, false, false, false },						-- grounding totem
	{ 8143, 60, nil, false, false, false },						-- tremor totems
	{ 2062, 600, nil, false, false, false },					-- earth elemental
	{ 5730, 20, nil, false, false, false },						-- stoneclaw totem
	{ 2894, 600, nil, false, false, false },					-- fire elemental
	{ 2825, 300, nil, false, false, false },					-- blood lust
	{ 32182, 300, nil, false, false, false },					-- heroism
	{ 51514, 45, nil, true, false, false },						-- hex
	{ 73680, 15, nil, false, false, false },					-- unleash elements
	{ 73920, 10, nil, false, false, false },					-- healing rain
	{ 79206, 120, nil, false, false, false },					-- spiritwalkers grace
	{ 30823, 60, nil, false, false, false },					-- shamanistic rage
	
	-- mage
	{ 11958, 180, nil, false, false, false },					-- cold snap
	{ 12472, 180, nil, false, false, false },					-- icy veins
	{ 84714, 60, nil, false, false, false },					-- frozen orb
	{ 2136, 8, nil, false, false, false },						-- fire blast
	{ 122, 25, nil, false, false, false },						-- frost nova
	{ 2139, 24, nil, false, false, false },						-- counterspell
	{ 12051, 240, nil, false, false, false },					-- evocation
	{ 1953, 15, nil, false, false, false },						-- blink
	{ 120, 10, nil, false, false, false },						-- cone of cold
	{ 45438, 300, nil, false, false, false },					-- ice block
	{ 55342, 180, nil, false, false, false },					-- mirror image
	{ 66, 180, nil, false, false, false },						-- invisibility
	{ 82731, 60, nil, false, false, false },					-- flame orb		
	{ 82676, 120, nil, false, false, false },					-- ring of frost	
	{ 118, 50, nil, true, true, false },						-- polymorph
	{ 28271, 50, nil, true, true, false },						-- poly turtle
	{ 28272, 50, nil, true, true, false },						-- poly pig
	{ 61305, 50, nil, true, true, false },						-- poly black cat
	{ 61025, 50, nil, true, true, false },						-- poly serpent
	{ 61721, 50, nil, true, true, false },						-- poly rabbit
	{ 61780, 50, nil, true, true, false },						-- poly turkey

	-- paladin
	{ 35395, 3.5, nil, false, false, false },					-- crusader strike
	{ 20271, 8, nil, false, false, false },						-- judgement
	{ 85673, 20, nil, false, false, false },					-- word of glory
	{ 853, 60, nil, false, false, false },						-- hammer of justice
	{ 62124, 8, nil, false, false, false },						-- hand of reckoning
	{ 633, 600, nil, false, false, false },						-- lay on hands
	{ 1022, 300, nil, false, false, false },					-- hand of protection	
	{ 26573, 8.86, nil, false, false, false },					-- consecration
	{ 2812, 15, nil, false, false, false },						-- holy wrath
	{ 498, 60, nil, false, false, false },						-- divine protection
	{ 24275, 6, nil, false, false, false },						-- hammer of wrath
	{ 642, 300, nil, false, false, false },						-- divine shield
	{ 1044, 25, nil, false, false, false },						-- hand of freedom
	{ 96231, 15, nil, false, false, false },					-- Rebuke
	{ 31884, 180, nil, false, false, false },					-- avenging wrath
	{ 6940, 120, nil, false, false, false },					-- hand of sacrifice
	{ 20066, 15, nil, false, false, false },					-- repentance
	
	-- deathknight
	{ 50977, 60, nil, false, false, false },					-- death gate
	{ 46584, 180, nil, false, false, false },					-- raise dead
	{ 47528, 10, nil, false, false, false },					-- mind freeze
	{ 47476, 120, nil, false, false, false },					-- strangulate
	{ 43265, 30, nil, false, false, false },					-- death and decay
	{ 48792, 180, nil, false, false, false },					-- icebound fortitude	
	{ 45529, 60, nil, false, false, false },					-- bloot tap
	{ 56222, 8, nil, false, false, false },						-- dark command
	{ 48743, 120, nil, false, false, false },					-- death pact
	{ 48707, 45, nil, false, false, false },					-- antimagic shell
	{ 61999, 600, nil, false, false, false },					-- raise ally
	{ 47568, 300, nil, false, false, false },					-- empower rune weapon
	{ 42650, 600, nil, false, false, false },					-- army of the dead
	{ 77575, 60, nil, false, false, false },					-- outbreak
	{ 77606, 60, nil, false, false, false },					-- dark simulacrum

	-- hunter
	{ 147362, 6, nil, false, false, false },					-- counter shot
	{ 5116, 5, nil, false, false, false },						-- concussive shot	
	{ 34026, 6, nil, false, false, false },						-- kill command
	{ 781, 10, nil, false, false, false },						-- disengage
	{ 19503, 30, nil, false, false, false },					-- scatter shot
	{ 13795, 30, nil, false, false, false },					-- immolation trap
	{ 1499, 30, nil, true, false, false },						-- freezing trap
	{ 60192, 30, nil, false, false, false },					-- trap launcher
	{ 5384, 30, nil, false, false, false },						-- feign death
	{ 53351, 10, nil, false, false, false },					-- kill shot
	{ 13813, 30, nil, false, false, false },					-- fire trap
	{ 1543, 20, nil, false, false, false },						-- flare
	{ 13809, 30, nil, false, false, false },					-- ice trap
	{ 20736, 8, nil, false, false, false },						-- distracting shot
	{ 3045, 300, nil, false, false, false },					-- rapid fire
	{ 34600, 30, nil, false, false, false },					-- snake trap
	{ 53271, 45, nil, false, false, false },					-- masters call
	{ 34477, 30, nil, false, false, false },					-- misdirection
	{ 19263, 120, nil, false, false, false },					-- deterrence
	{ 51753, 60, nil, false, false, false },					-- camourflage

	-- druid
	{ 5215, 10, nil, false, false, false },						-- prowl
	{ 6795, 8, nil, false, false, false },						-- growl
	{ 20484, 600, nil, false, false, false },					-- rebirth
	{ 5229, 60, nil, false, false, false },						-- enrage
	{ 80964, 15, nil, false, false, false },					-- skull bash (bear)
	{ 80965, 15, nil, false, false, false },					-- skull bash (cat)
	{ 5217, 30, nil, false, false, false },						-- tigers fury
	{ 8998, 10, nil, false, false, false },						-- cower
	{ 1850, 180, nil, false, false, false },					-- dash
	{ 5209, 180, nil, false, false, false },					-- challenging roar
	{ 29166, 180, nil, false, false, false },					-- innervate
	{ 5211, 50, nil, false, false, false },						-- bash
	{ 16689, 60, nil, false, false, false },					-- natures grasp
	{ 22812, 60, nil, false, false, false },					-- barkskin
	{ 22570, 10, nil, false, false, false },					-- maim
	{ 740, 480, nil, false, false, false },						-- tranquility
	{ 77758, 6, nil, false, false, false },						-- Thrash
	{ 77761, 120, nil, false, false, false },					-- stampeding roar (bear)
	{ 77764, 120, nil, false, false, false },					-- stampeding roar (cat)
	{ 88751, 10, nil, false, false, false },					-- wild mushroom: detonate
	{ 339, nil, nil, true, true, false },						-- entangling roots

	-- warrior
	{ 100, 20, nil, false, false, false },						-- charge
	{ 6343, 6, nil, false, false, false },						-- thunderclap
	{ 355, 8, nil, false, false, false },						-- taunt
	{ 6673, 60, nil, false, false, false },						-- battle shout
	{ 57755, 60, nil, false, false, false },					-- heroic throw
	{ 676, 60, nil, false, false, false },						-- disarm		
	{ 6552, 15, nil, false, false, false },						-- pummel				
	{ 6572, 9, nil, false, false, false },						-- revenge			
	{ 5246, 90, nil, false, false, false },						-- intimidating shout											
	{ 871, 180, nil, false, false, false },						-- shield wall
	{ 18499, 30, nil, false, false, false },					-- beserker rage
	{ 1719, 180, nil, false, false, false },					-- recklessness
	{ 23920, 25, nil, false, false, false },					-- spell reflect
	{ 469, 60, nil, false, false, false },						-- commanding shout
	{ 3411, 30, nil, false, false, false },						-- intervene
	{ 64382, 300, nil, false, false, false },					-- shattering throw
	{ 55694, 60, nil, false, false, false },					-- enraged regeneration
	{ 86346, 20, nil, false, false, false },					-- colossus smash
	{ 97462, 180, nil, false, false, false },					-- rallying cry
	{ 6544, 45, nil, false, false, false },						-- heroic leap

	-- rogue
	-- many are here without cooldown for detection only.
	{ 408, 20, nil, false, false, true },						-- kidney shot
	{ 51722, 60, nil, false, false, true },						-- dismantle	
	{ 1766, 15, nil, false, false, true },						-- kick	
	{ 1776, 10, nil, false, false, true },						-- Gouge
	{ 2983, 60, nil, false, false, true },						-- sprint
	{ 1856, 120, nil, false, false, true },						-- vanish
	{ 1725, 30, nil, false, false, true },						-- distract
	{ 2094, 120, nil, false, false, true },						-- blind
	{ 31224, 60, nil, false, false, true },						-- cloak of shadows
	{ 57934, 30, nil, false, false, true },						-- tricks of the trade.
	{ 73981, 60, nil, false, false, true },						-- redirect	
	{ 1784, 6, nil, false, false, true },						-- stealth	
	{ 5277, 180, nil, false, false, true },						-- evasion		
	{ 6770, nil, nil, true, true, true },						-- sap
	{ 76577, 180, nil, false, false, true },					-- smoke bomb	
	{ 1833, nil, nil, false, true, true },						-- cheap shot	
	{ 73651, nil, nil, false, false, true },					-- recuperate		
	{ 1752, nil, nil, false, false, true },						-- sinister strike
	{ 2098, nil, nil, false, false, true },						-- eviscerate
	{ 8676, nil, nil, false, false, true },						-- ambush
	{ 2823, nil, nil, false, false, true },						-- deadly poison
	{ 5171, nil, nil, false, false, true },						-- slick n dice
	{ 3408, nil, nil, false, false, true },						-- crippling poison
	{ 5761, nil, nil, false, false, true },						-- mind numbing poison
	{ 8679, nil, nil, false, false, true },						-- wound poison
	{ 1842, nil, nil, false, false, true },						-- disarm trap
	{ 51723, nil, nil, false, false, true },					-- fan of knives
	{ 5938, 10, nil, false, false, true },						-- shiv
	{ 114842, 60, nil, false, false, true },					-- shadow walk
	{ 76577, 180, nil, false, false, true },					-- smoke bomb
	{ 121471, 180, nil, false, false, true },					-- shadowblades

	-- Monk
	{ 115203, 180, nil, false, false, false },					-- fortifying brew	
	{ 117368, 60, nil, false, false, false },					-- grapple weapon
	{ 115078, 15, nil, true, false, false },					-- paralysis
	{ 116705, 15, nil, false, false, false },					-- spear hand strike
	{ 115080, 90, nil, false, false, false },					-- touch of death
	{ 101643, 45, nil, false, false, false },					-- transcendence					
	{ 119996, 25, nil, false, false, false },					-- transcendence transfer
	{ 115176, 180, nil, false, false, false },					-- zen meditation
	{ 143027, 10, nil, false, false, false },					-- clash
	{ 123402, 30, nil, false, false, false },					-- guard
	{ 115308, 6, nil, false, false, false },					-- elusive brew
	{ 115315, 30, nil, false, false, false },					-- summon blaxk ox statue
	{ 116849, 120, nil, false, false, false },					-- life cocoon
	{ 116680, 45, nil, false, false, false },					-- thunder focus tea
	{ 115310, 180, nil, false, false, false },					-- revival
	{ 113656, 25, nil, false, false, false },					-- fists of fury
	{ 101545, 25, nil, false, false, false },					-- flying serpent kick
	{ 122470, 90, nil, false, false, false },					-- touch of karma
	{ 115288, 60, nil, false, false, false },					-- energizing brew
	{ 116740, 5, nil, false, false, false },					-- tigereye brew
		
};


--
--	Process Spell Information
--	Returns:  spell_id, cooldown, glyph, crowd control, diminish return, rogue warn, spell icon
--
function Natur_ProcessAbilityFired(spellid, guid)
	for count,value in ipairs(Natur_AbilityInfo) do 
		if(value[1] == spellid) then
			-- found the spell im interested in.
			local _,_, icon,_,_,_,_,_,_ = GetSpellInfo(spellid);
			return value[1], value[2], value[3], value[4], value[5], value[6], icon;
		end;
	end;	-- end of loop
end;