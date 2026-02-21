local LSM = LibStub("LibSharedMedia-3.0", true)
if not LSM then
    print("|cffff0000Ошибка:|r Библиотека LibSharedMedia-3.0 не найдена!")
    return
end

local ADDON_NAME = "ZamestoTV_Win11FontsLSM"
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
    ["Blizzard: Friz Quadrata"] = [[Fonts\FRIZQT__.TTF]],
    ["Blizzard: Arial Narrow"]  = [[Fonts\ARIALN.TTF]],
    ["Blizzard: Morpheus"]      = [[Fonts\MORPHEUS.ttf]],
    ["Blizzard: Skurri"]        = [[Fonts\skurri.ttf]],
    ["Blizzard: Koki"]          = [[Fonts\KOKI.ttf]],
    ["Blizzard: LifeVessel"]    = [[Fonts\LifeVessel.ttf]],
}

local customLoaded = 0
for _ in pairs(customFonts) do
    customLoaded = customLoaded + 1
end

for name, path in pairs(customFonts) do
    LSM:Register("font", name, path)
end
for name, path in pairs(blizzardFonts) do
    LSM:Register("font", name, path)
end

local L = _G[ADDON_NAME .. "_L"]
if L then
    print(L("REGISTERED_USER_FONTS", ADDON_NAME, customLoaded))
else
    print("|cff00ff00" .. ADDON_NAME .. "|r: registered " .. customLoaded .. " custom fonts + standard Blizzard")
end