local ADDON_NAME = "ZamestoTV_Win11FontsLSM"

local L = {}

-- Английский (enUS / enGB) — базовый
L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: registered %d custom fonts + standard Blizzard fonts"

-- Немецкий (deDE)
if GetLocale() == "deDE" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: %d benutzerdefinierte Schriftarten + Standard-Blizzard-Schriftarten registriert"
end

-- Французский (frFR)
if GetLocale() == "frFR" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r : %d polices personnalisées + polices Blizzard standard enregistrées"
end

-- Испанский (esES / esMX)
if GetLocale() == "esES" or GetLocale() == "esMX" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: %d fuentes personalizadas + fuentes estándar de Blizzard registradas"
end

-- Итальянский (itIT)
if GetLocale() == "itIT" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: registrate %d font personalizzati + font standard Blizzard"
end

-- Португальский (ptBR)
if GetLocale() == "ptBR" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: %d fontes personalizadas + fontes padrão da Blizzard registradas"
end

-- Русский (ruRU)
if GetLocale() == "ruRU" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: зарегистрировано %d пользовательских шрифтов + стандартные Blizzard"
end

-- Корейский (koKR) — примерный перевод (если нужно точнее — уточни)
if GetLocale() == "koKR" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: %d 사용자 정의 폰트 + 표준 Blizzard 폰트 등록됨"
end

-- Китайский упрощённый (zhCN)
if GetLocale() == "zhCN" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: 已注册 %d 个自定义字体 + 标准暴雪字体"
end

-- Китайский традиционный (zhTW)
if GetLocale() == "zhTW" then
    L["REGISTERED_USER_FONTS"] = "|cff00ff00%s|r: 已註冊 %d 個自訂字型 + 標準暴雪字型"
end

-- Функция локализации (простая, без AceLocale)
local function GetLocalizedString(key, ...)
    local fmt = L[key] or L["REGISTERED_USER_FONTS"]  -- fallback на английский
    return fmt:format(...)
end

-- Экспортируем в глобал (или используй напрямую)
_G[ADDON_NAME .. "_L"] = GetLocalizedString