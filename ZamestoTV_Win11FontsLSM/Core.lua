local ADDON_NAME = ...
local fontPath   = "Interface\\AddOns\\" .. ADDON_NAME .. "\\Fonts\\"

local customFonts = {
    ["Caveat"]       = fontPath .. "Caveat.ttf",
    ["Front7"]       = fontPath .. "Front7.ttf",
    ["Literata"]     = fontPath .. "Literata.ttf",
    ["Merriweather"] = fontPath .. "Merriweather.ttf",
    ["OpenSans"]     = fontPath .. "OpenSans.ttf",
    ["Roboto"]       = fontPath .. "Roboto.ttf",
}

local blizzardFonts = {
    ["Blizzard: Friz Quadrata"] = "Fonts\\FRIZQT__.TTF",
    ["Blizzard: Arial Narrow"]  = "Fonts\\ARIALN.TTF",
    ["Blizzard: Morpheus"]      = "Fonts\\MORPHEUS.ttf",
    ["Blizzard: Skurri"]        = "Fonts\\skurri.ttf",
    ["Blizzard: Koki"]          = "Fonts\\KOKI.ttf",
    ["Blizzard: LifeVessel"]    = "Fonts\\LifeVessel.ttf",
}

local function RegisterFonts()
    local LSM = LibStub and LibStub:GetLibrary("LibSharedMedia-3.0", true)
    if not LSM then
        print("|cffff0000"..ADDON_NAME..": LibSharedMedia-3.0 not found.|r")
        return
    end

    local countCustom = 0
    local countBlizz  = 0

    for name, path in pairs(customFonts) do
        LSM:Register("font", name, path)
        countCustom = countCustom + 1
    end

    for name, path in pairs(blizzardFonts) do
        LSM:Register("font", name, path)
        countBlizz = countBlizz + 1
    end

    print("|cff00ff00"..ADDON_NAME.."|r: Registered "
        ..countCustom.." custom + "
        ..countBlizz.." Blizzard fonts.")
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")

frame:SetScript("OnEvent", function()
    RegisterFonts()
end)