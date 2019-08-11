
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

NATUR_PROCESS_SLIDERS = false;

Natur_GroupDescriptions = {
	"Primary Group",
	"Hostile Casts",
	"Target Buffs",
	"Target Debuffs",
	"Target Cooldowns",
	"Friendly Casts",
	"Diminish Returns",
	"Player Buffs",
	"Player Debuffs",
	"Player Cooldowns",
};

local Natur_BarSettingSelected = 1;
local Natur_TestBarsStatus = 0;

--
--	Close Options
--
function BarSettingsFinishedButton_OnClick()
	-- clear test bars (if any)
	Natur_TestBarsStatus = 0;
	NaturTargetBuffsGroup:UnregisterAllBars();
	NaturHostileCastGroup:UnregisterAllBars();
	NaturFriendlyCastGroup:UnregisterAllBars();
	NaturMyCooldownsGroup:UnregisterAllBars();
	NaturTargetDebuffsGroup:UnregisterAllBars();
	NaturDiminishGroup:UnregisterAllBars();
	NaturPrimaryGroup:UnregisterAllBars();
	-- close the settings screen.
	BarSettingsFrame:Hide();
	MainOptionsFrame:Show();
end

--
--	Process Settings Selection
--
--	Responsible for setting the initial values when user changes
--	which groups to alter.
--
function Natur_ProcessBarSettings()
	-- set text
	BarGroupsTitle:SetText(Natur_BarSettingSelected..":   "..Natur_GroupDescriptions[Natur_BarSettingSelected]);
	if(Natur_BarSettingSelected == 1) then				-- Primary Group
		HeightSlider:SetValue(Natur_AccountOptions[6]);
		HeightText:SetText(Natur_AccountOptions[6]);
		WidthSlider:SetValue(Natur_AccountOptions[7]);
		WidthText:SetText(Natur_AccountOptions[7]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[9]);
		MaxBarText:SetText(Natur_AccountOptions[9]);
		FontSizeSlider:SetValue(Natur_AccountOptions[11]);
		FontSizeText:SetText(Natur_AccountOptions[11]);
		TextureSlider:SetValue(Natur_AccountOptions[8]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[8]]);
		if(Natur_AccountOptions[5] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;	
	elseif(Natur_BarSettingSelected == 2) then			-- Hostile Casts
		HeightSlider:SetValue(Natur_AccountOptions[16]);
		HeightText:SetText(Natur_AccountOptions[16]);
		WidthSlider:SetValue(Natur_AccountOptions[17]);
		WidthText:SetText(Natur_AccountOptions[17]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[19]);
		MaxBarText:SetText(Natur_AccountOptions[19]);
		FontSizeSlider:SetValue(Natur_AccountOptions[21]);
		FontSizeText:SetText(Natur_AccountOptions[21]);
		TextureSlider:SetValue(Natur_AccountOptions[18]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[18]]);
		if(Natur_AccountOptions[15] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;	
	elseif(Natur_BarSettingSelected == 3) then			-- Target Gains
		HeightSlider:SetValue(Natur_AccountOptions[26]);
		HeightText:SetText(Natur_AccountOptions[26]);
		WidthSlider:SetValue(Natur_AccountOptions[27]);
		WidthText:SetText(Natur_AccountOptions[27]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[29]);
		MaxBarText:SetText(Natur_AccountOptions[29]);
		FontSizeSlider:SetValue(Natur_AccountOptions[31]);
		FontSizeText:SetText(Natur_AccountOptions[31]);
		TextureSlider:SetValue(Natur_AccountOptions[28]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[28]]);
		if(Natur_AccountOptions[25] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;	
	elseif(Natur_BarSettingSelected == 4) then			-- Target Debuffs
		HeightSlider:SetValue(Natur_AccountOptions[36]);
		HeightText:SetText(Natur_AccountOptions[36]);
		WidthSlider:SetValue(Natur_AccountOptions[37]);
		WidthText:SetText(Natur_AccountOptions[37]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[39]);
		MaxBarText:SetText(Natur_AccountOptions[39]);
		FontSizeSlider:SetValue(Natur_AccountOptions[41]);
		FontSizeText:SetText(Natur_AccountOptions[41]);
		TextureSlider:SetValue(Natur_AccountOptions[38]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[38]]);
		if(Natur_AccountOptions[35] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;	
	elseif(Natur_BarSettingSelected == 5) then			-- Cooldowns
		HeightSlider:SetValue(Natur_AccountOptions[66]);
		HeightText:SetText(Natur_AccountOptions[66]);
		WidthSlider:SetValue(Natur_AccountOptions[67]);
		WidthText:SetText(Natur_AccountOptions[67]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[69]);
		MaxBarText:SetText(Natur_AccountOptions[69]);
		FontSizeSlider:SetValue(Natur_AccountOptions[71]);
		FontSizeText:SetText(Natur_AccountOptions[71]);
		TextureSlider:SetValue(Natur_AccountOptions[68]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[68]]);
		if(Natur_AccountOptions[65] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;	
	elseif(Natur_BarSettingSelected == 6) then			-- Friendly Casts
		HeightSlider:SetValue(Natur_AccountOptions[56]);
		HeightText:SetText(Natur_AccountOptions[56]);
		WidthSlider:SetValue(Natur_AccountOptions[57]);
		WidthText:SetText(Natur_AccountOptions[57]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[59]);
		MaxBarText:SetText(Natur_AccountOptions[59]);
		FontSizeSlider:SetValue(Natur_AccountOptions[61]);
		FontSizeText:SetText(Natur_AccountOptions[61]);
		TextureSlider:SetValue(Natur_AccountOptions[58]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[58]]);
		if(Natur_AccountOptions[55] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;	
	elseif(Natur_BarSettingSelected == 7) then			-- Diminish Returns
		HeightSlider:SetValue(Natur_AccountOptions[86]);
		HeightText:SetText(Natur_AccountOptions[86]);
		WidthSlider:SetValue(Natur_AccountOptions[87]);
		WidthText:SetText(Natur_AccountOptions[87]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[89]);
		MaxBarText:SetText(Natur_AccountOptions[89]);
		FontSizeSlider:SetValue(Natur_AccountOptions[91]);
		FontSizeText:SetText(Natur_AccountOptions[91]);
		TextureSlider:SetValue(Natur_AccountOptions[88]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[88]]);
		if(Natur_AccountOptions[85] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;		
	elseif(Natur_BarSettingSelected == 8) then			-- Player Gains
		HeightSlider:SetValue(Natur_AccountOptions[96]);
		HeightText:SetText(Natur_AccountOptions[96]);
		WidthSlider:SetValue(Natur_AccountOptions[97]);
		WidthText:SetText(Natur_AccountOptions[97]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[99]);
		MaxBarText:SetText(Natur_AccountOptions[99]);
		FontSizeSlider:SetValue(Natur_AccountOptions[101]);
		FontSizeText:SetText(Natur_AccountOptions[101]);
		TextureSlider:SetValue(Natur_AccountOptions[98]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[98]]);
		if(Natur_AccountOptions[95] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;	
	elseif(Natur_BarSettingSelected == 9) then			-- Player Debuffs
		HeightSlider:SetValue(Natur_AccountOptions[106]);
		HeightText:SetText(Natur_AccountOptions[106]);
		WidthSlider:SetValue(Natur_AccountOptions[107]);
		WidthText:SetText(Natur_AccountOptions[107]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[109]);
		MaxBarText:SetText(Natur_AccountOptions[109]);
		FontSizeSlider:SetValue(Natur_AccountOptions[111]);
		FontSizeText:SetText(Natur_AccountOptions[111]);
		TextureSlider:SetValue(Natur_AccountOptions[108]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[108]]);
		if(Natur_AccountOptions[105] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;
	elseif(Natur_BarSettingSelected == 10) then			-- Player Cooldowns
		HeightSlider:SetValue(Natur_AccountOptions[46]);
		HeightText:SetText(Natur_AccountOptions[46]);
		WidthSlider:SetValue(Natur_AccountOptions[47]);
		WidthText:SetText(Natur_AccountOptions[47]);
		MaxBarsSlider:SetValue(Natur_AccountOptions[49]);
		MaxBarText:SetText(Natur_AccountOptions[49]);
		FontSizeSlider:SetValue(Natur_AccountOptions[51]);
		FontSizeText:SetText(Natur_AccountOptions[51]);
		TextureSlider:SetValue(Natur_AccountOptions[48]);
		GroupTexture:SetTexture(Natur_Textures[Natur_AccountOptions[48]]);
		if(Natur_AccountOptions[45] == "UP") then 
			BarDirectionCheckbox:SetChecked(true); 
		else
			BarDirectionCheckbox:SetChecked(false); 
		end;	
	end;
end;

--
--	Back Button
--
function SettingsBackButton_OnClick()
		Natur_BarSettingSelected = Natur_BarSettingSelected - 1;
		if(Natur_BarSettingSelected < 1) then
			Natur_BarSettingSelected = 10;
		end;
		Natur_ProcessBarSettings();
end;

--
--	Forward Button
--
function SettingsForwardButton_OnClick()
	Natur_BarSettingSelected = Natur_BarSettingSelected + 1;	
	if(Natur_BarSettingSelected > 10) then
			Natur_BarSettingSelected = 1;
	end;
	Natur_ProcessBarSettings();
end


-- ******************************************************************
-- ***********************  SLIDER ROUTINES *************************
-- ******************************************************************


--
--	Height OnValueChanged
--
function HeightSlider_OnValueChanged()
	if(NATUR_PROCESS_SLIDERS) then
		local value = HeightSlider:GetValue();
		value = tostring(value); value = format("%.0f", value);	value = tonumber(value);	-- bugfix, sliders giving off reading so formatted its output
		if(Natur_BarSettingSelected == 1) then				-- Primary Group	
			Natur_AccountOptions[6] = value;
			NaturPrimaryGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 2) then			-- Hostile Casts
			Natur_AccountOptions[16] = value;
			NaturHostileCastGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 3) then			-- Target Gains
			Natur_AccountOptions[26] = value;
			NaturTargetBuffsGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 4) then			-- Target Debuffs
			Natur_AccountOptions[36] = value;
			NaturTargetDebuffsGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 5) then			-- Cooldowns
			Natur_AccountOptions[66] = value;
			NaturMyCooldownsGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 6) then			-- Friendly Casts
			Natur_AccountOptions[56] = value;
			NaturFriendlyCastGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 7) then			-- Diminish Returns
			Natur_AccountOptions[86] = value;
			NaturDiminishGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 8) then			-- Player Buffs
			Natur_AccountOptions[96] = value;
			NaturPlayersBuffsGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 9) then			-- Player Debuffs
			Natur_AccountOptions[106] = value;
			NaturPlayersDebuffsGroup:SetHeight(value);
		elseif(Natur_BarSettingSelected == 10) then			-- Player Cooldowns
			Natur_AccountOptions[52] = value;
			NaturMyCooldownsGroup2:SetHeight(value);
		end;
		-- set text
		HeightText:SetText(value);
	end;
end

--
--	Width Slider
--
function WidthSlider_OnValueChanged()
	if(NATUR_PROCESS_SLIDERS) then
		local value = WidthSlider:GetValue();
		value = tostring(value); value = format("%.0f", value);	value = tonumber(value);	-- bugfix, sliders giving off reading so formatted its output
		if(Natur_BarSettingSelected == 1) then				-- Primary Group
			Natur_AccountOptions[7] = value;
			NaturPrimaryGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 2) then			-- Hostile Casts
			Natur_AccountOptions[17] = value;
			NaturHostileCastGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 3) then			-- Target Gains
			Natur_AccountOptions[27] = value;
			NaturTargetBuffsGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 4) then			-- Target Debuffs
			Natur_AccountOptions[37] = value;
			NaturTargetDebuffsGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 5) then			-- Cooldowns
			Natur_AccountOptions[67] = value;
			NaturMyCooldownsGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 6) then			-- Friendly Casts
			Natur_AccountOptions[57] = value;
			NaturFriendlyCastGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 7) then			-- Diminish Returns
			Natur_AccountOptions[87] = value;
			NaturDiminishGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 8) then			-- Player Buffs
			Natur_AccountOptions[97] = value;
			NaturPlayersBuffsGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 9) then			-- Player Debuffs
			Natur_AccountOptions[107] = value;
			NaturPlayersDebuffsGroup:SetWidth(value);	
		elseif(Natur_BarSettingSelected == 10) then			-- Player Cooldowns
			Natur_AccountOptions[47] = value;
			NaturMyCooldownsGroup2:SetWidth(value);	
		end;
		-- set text
		WidthText:SetText(value);	
	end;
end

--
--	Max Bars Slider
--
function MaxBarsSlider_OnValueChanged()
	if(NATUR_PROCESS_SLIDERS) then
		local value = MaxBarsSlider:GetValue();
		value = tostring(value); value = format("%.0f", value);	value = tonumber(value);	-- bugfix, sliders giving off reading so formatted its output
		if(Natur_BarSettingSelected == 1) then				-- Primary Group
			Natur_AccountOptions[9] = value;	
			NaturPrimaryGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 2) then			-- Hostile Casts
			Natur_AccountOptions[19] = value;
			NaturHostileCastGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 3) then			-- Target Gains
			Natur_AccountOptions[29] = value;
			NaturTargetBuffsGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 4) then			-- Target Debuffs
			Natur_AccountOptions[39] = value;
			NaturTargetDebuffsGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 5) then			-- Cooldowns
			Natur_AccountOptions[69] = value;
			NaturMyCooldownsGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 6) then			-- Friendly Casts
			Natur_AccountOptions[59] = value;
			NaturFriendlyCastGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 7) then			-- Diminish Returns
			Natur_AccountOptions[89] = value;
			NaturDiminishGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 8) then			-- Player Buffs
			Natur_AccountOptions[99] = value;
			NaturPlayersBuffsGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 9) then			-- Player Debuffs
			Natur_AccountOptions[109] = value;
			NaturPlayersDebuffsGroup:SetMaxBars(value);
		elseif(Natur_BarSettingSelected == 10) then			-- Player Cooldowns
			Natur_AccountOptions[49] = value;
			NaturMyCooldownsGroup2:SetMaxBars(value);
		end;
		-- set text
		MaxBarText:SetText(value);	
	end;
end

--
--	Font Size
--
function FontSizeSlider_OnValueChanged()
	if(NATUR_PROCESS_SLIDERS) then
		local value = FontSizeSlider:GetValue();
		value = tostring(value); value = format("%.0f", value);	value = tonumber(value);	-- bugfix, sliders giving off reading so formatted its output
		if(Natur_BarSettingSelected == 1) then				-- Primary Group	
			Natur_AccountOptions[11] = value;
			NaturPrimaryGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 2) then			-- Hostile Casts
			Natur_AccountOptions[21] = value;
			NaturHostileCastGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 3) then			-- Target Gains
			Natur_AccountOptions[31] = value;
			NaturTargetBuffsGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 4) then			-- Target Debuffs
			Natur_AccountOptions[41] = value;
			NaturTargetDebuffsGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 5) then			-- Cooldowns
			Natur_AccountOptions[71] = value;
			NaturMyCooldownsGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 6) then			-- Friendly Casts
			Natur_AccountOptions[61] = value;
			NaturFriendlyCastGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 7) then			-- Diminish Returns
			Natur_AccountOptions[91] = value;
			NaturDiminishGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 8) then			-- Player Buffs
			Natur_AccountOptions[101] = value;
			NaturPlayersBuffsGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 9) then			-- Player Debuffs
			Natur_AccountOptions[111] = value;
			NaturPlayersDebuffsGroup:SetGroupFontSize(value);
		elseif(Natur_BarSettingSelected == 10) then			-- Player Cooldowns
			Natur_AccountOptions[51] = value;
			NaturMyCooldownsGroup2:SetGroupFontSize(value);
		end;
		-- set text
		FontSizeText:SetText(value);	
	end;
end

--
--	Texture
--
function TextureSlider_OnValueChanged()
	if(NATUR_PROCESS_SLIDERS) then
		local value = TextureSlider:GetValue();
		value = tostring(value); value = format("%.0f", value);	value = tonumber(value);	-- bugfix, sliders giving off reading so formatted its output
		if(Natur_BarSettingSelected == 1) then				-- Primary Group
			Natur_AccountOptions[8] = value;	
			NaturPrimaryGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 2) then			-- Hostile Casts
			Natur_AccountOptions[18] = value;	
			NaturHostileCastGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 3) then			-- Target Gains
			Natur_AccountOptions[28] = value;	
			NaturTargetBuffsGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 4) then			-- Target Debuffs
			Natur_AccountOptions[38] = value;	
			NaturTargetDebuffsGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 5) then			-- Cooldowns
			Natur_AccountOptions[68] = value;	
			NaturMyCooldownsGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 6) then			-- Friendly Casts
			Natur_AccountOptions[58] = value;	
			NaturFriendlyCastGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 7) then			-- Diminish Returns
			Natur_AccountOptions[88] = value;	
			NaturDiminishGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 8) then			-- Player Buffs
			Natur_AccountOptions[98] = value;	
			NaturPlayersBuffsGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 9) then			-- Player Debuffs
			Natur_AccountOptions[108] = value;	
			NaturPlayersDebuffsGroup:SetTexture(Natur_Textures[value]);
		elseif(Natur_BarSettingSelected == 10) then			-- Player Cooldowns
			Natur_AccountOptions[48] = value;	
			NaturMyCooldownsGroup2:SetTexture(Natur_Textures[value]);
		end;
		-- set texture
		GroupTexture:SetTexture(Natur_Textures[value]);
	end;
end


-- ******************************************************************
-- *********************  CHECKBOX ROUTINES *************************
-- ******************************************************************

function BarDirectionCheckbox_OnClick()
	local CheckboxEnabled = BarDirectionCheckbox:GetChecked();
	if(CheckboxEnabled == 1) then CheckboxEnabled = "UP";
	else CheckboxEnabled = "DOWN"; end;
	if(Natur_BarSettingSelected == 1) then				-- Primary Group
		Natur_AccountOptions[5] = CheckboxEnabled;
		NaturPrimaryGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 2) then			-- Hostile Casts
		Natur_AccountOptions[15] = CheckboxEnabled;
		NaturHostileCastGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 3) then			-- Target Gains
		Natur_AccountOptions[25] = CheckboxEnabled;
		NaturTargetBuffsGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 4) then			-- Target Debuffs
		Natur_AccountOptions[35] = CheckboxEnabled;
		NaturTargetDebuffsGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 5) then			-- Cooldowns
		Natur_AccountOptions[65] = CheckboxEnabled;
		NaturMyCooldownsGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 6) then			-- Friendly Casts
		Natur_AccountOptions[55] = CheckboxEnabled;
		NaturFriendlyCastGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 7) then			-- Diminish Returns
		Natur_AccountOptions[85] = CheckboxEnabled;
		NaturDiminishGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 8) then			-- Player Buffs
		Natur_AccountOptions[95] = CheckboxEnabled;
		NaturPlayersBuffsGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 9) then			-- Player Debuffs
		Natur_AccountOptions[105] = CheckboxEnabled;
		NaturPlayersDebuffsGroup:SetBarGrowth(CheckboxEnabled);
	elseif(Natur_BarSettingSelected == 10) then			-- Player Cooldowns
		Natur_AccountOptions[45] = CheckboxEnabled;
		NaturMyCooldownsGroup2:SetBarGrowth(CheckboxEnabled);
	end;	
end

--
--	Toggle Anchors 
--
function ToggleAnchorsButton_OnClick()
	if(Natur_AccountOptions[1] == true) then
		Natur_AccountOptions[1] = false;
	else
		Natur_AccountOptions[1] = true;
	end;
	Natur_SetAnchor(Natur_AccountOptions[1]);
end


--
--	Toggle Test Bars.
--
function ToggleTestBars_OnClick()
	if(Natur_TestBarsStatus == 0) then
		Natur_TestBarsStatus = 1;
		if(Natur_AccountOptions[32]) then 
			NaturTargetBuffsGroup:RegisterBar("Testing1", "Beneficial Buffs", 300, 300, Natur_PlayerIcon, Natur_HTarget);
			NaturTargetBuffsGroup:RegisterBar("Testing2", "Beneficial Buffs", 300, 300, Natur_PlayerIcon, Natur_HTarget);
		end;
		if(Natur_AccountOptions[22]) then 
			NaturHostileCastGroup:RegisterBar("Testing11", "Hostile Casts", 300, 300, Natur_PlayerIcon, Natur_HTarget);
			NaturHostileCastGroup:RegisterBar("Testing12", "Hostile Casts", 300, 300, Natur_PlayerIcon, Natur_HTarget);
		end;
		if(Natur_AccountOptions[62]) then 
			NaturFriendlyCastGroup:RegisterBar("Testing21", "Friendly Casts", 300, 300, Natur_PlayerIcon, Natur_HTarget);
			NaturFriendlyCastGroup:RegisterBar("Testing22", "Friendly Casts", 300, 300, Natur_PlayerIcon, Natur_HTarget);
		end;
		if(Natur_AccountOptions[72] or Natur_AccountOptions[136] or Natur_AccountOptions[137]) then 
			NaturMyCooldownsGroup:RegisterBar("Testing31", "Cooldowns", 300, 300, Natur_PlayerIcon, Natur_HTarget);
			NaturMyCooldownsGroup:RegisterBar("Testing32", "Cooldowns", 300, 300, Natur_PlayerIcon, Natur_HTarget);
		end;
		if(Natur_AccountOptions[42]) then 
			NaturTargetDebuffsGroup:RegisterBar("Testing41", "Targets Debuffs", 300, 300, Natur_PlayerIcon, Natur_HTarget);
			NaturTargetDebuffsGroup:RegisterBar("Testing42", "Targets Debuffs", 300, 300, Natur_PlayerIcon, Natur_HTarget);
		end;
		if(Natur_AccountOptions[92]) then 
			NaturDiminishGroup:RegisterBar("Testing51", "Diminish Returns", 300, 300, Natur_PlayerIcon, Natur_HTarget);
			NaturDiminishGroup:RegisterBar("Testing52", "Diminish Returns", 300, 300, Natur_PlayerIcon, Natur_HTarget);
		end;
		if(not(Natur_AccountOptions[2])) then
			NaturPrimaryGroup:RegisterBar("Testing61", "Primary (Grouped up)", 300, 300, Natur_PlayerIcon, Natur_HTarget);
			NaturPrimaryGroup:RegisterBar("Testing62", "Primary (Grouped up)", 300, 300, Natur_PlayerIcon, Natur_HTarget);
		end;
		if(Natur_AccountOptions[114]) then	-- only if we have these groups on.
			NaturPlayersBuffsGroup:RegisterBar("Testing71", "Player Buffs", 300, 300, Natur_PlayerIcon, Natur_HTarget);
			NaturPlayersBuffsGroup:RegisterBar("Testing72", "Player Buffs", 300, 300, Natur_PlayerIcon, Natur_HTarget);
		end;
	else
		Natur_TestBarsStatus = 0;
		NaturTargetBuffsGroup:UnregisterAllBars();
		NaturHostileCastGroup:UnregisterAllBars();
		NaturFriendlyCastGroup:UnregisterAllBars();
		NaturMyCooldownsGroup:UnregisterAllBars();
		NaturTargetDebuffsGroup:UnregisterAllBars();
		NaturDiminishGroup:UnregisterAllBars();
		NaturPrimaryGroup:UnregisterAllBars();
		NaturPlayersBuffsGroup:UnregisterAllBars();
		NaturPlayersDebuffsGroup:UnregisterAllBars();
	end;
end
