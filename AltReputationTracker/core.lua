
AltRepTrackerDB = {}

local eventFrame = CreateFrame("FRAME", "AltRepTrackerEventFrame")
eventFrame:RegisterEvent("PLAYER_LOGOUT")
eventFrame:RegisterEvent("PLAYER_LEAVING_WORLD")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
eventFrame:RegisterEvent("UPDATE_FACTION")
eventFrame:SetScript("OnEvent", function(self, event, ...) 
	if event == "PLAYER_LEAVING_WORLD" or event == "PLAYER_LOGOUT" then 
		SaveReputations()
	else if event == "PLAYER_ENTERING_WORLD" then 
		AddButtonToReputationFrame()
		SaveReputations()
	else 
		SaveReputations()
		RefreshUI()
	end
end)

function SaveReputations() 
	-- test data for now

	-- Champions of Azeroth
	local name, description, standingID, bottomValue, topValue, earnedValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = GetFactionInfo(2164)
	
	if standingID then 
		 
		
		
	end
end

function AddButtonToReputationFrame() 
	
	
	do
		if not AltRepTrackerFrame then
			CreateFrame("FRAME", "AltRepTrackerFrame", ReputationFrame)
			AltRepTrackerFrame:CreateFontString("AltRepTrackerText", "ARTWORK", "GameFontHighlight")
			AltRepTrackerFrame:SetPoint("TOPLEFT", ReputationFrame, "TOPLEFT", 0, -20)
			AltRepTrackerFrame:SetSize(335, 50)
			AltRepTrackerText:SetPoint("CENTER", AltRepTrackerFrame, "CENTER", 0, 0)
			ReputationFrameStandingLabel:Hide()
			ReputationFrameFactionLabel:Hide()
		end	
	end
end