
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



function Natur_UIFlash()
	Natur_FlashTexture:SetTexture("Interface\\AddOns\\Natur\\Graphics\\Natur_GuiRedFlash.tga");
	Natur_UIFlashFrame:SetAllPoints(UIParent);
	Natur_UIFlashFrame:Show();
end;


function Natur_UIOnFlash(self)
	self.elapsed = 0
	self:SetAlpha(0)	
end


function Natur_UIOnFlashUpdate(self, elapsed)
	elapsed = self.elapsed + elapsed
	if elapsed < 2.6 then local alpha = elapsed % 1.3
		if alpha < 0.15 then self:SetAlpha(alpha / 0.15)
		elseif alpha < 0.9 then	self:SetAlpha(1 - (alpha - 0.15) / 0.6)
		else self:SetAlpha(0) end
	else self:Hide() end
	self.elapsed = elapsed
end
