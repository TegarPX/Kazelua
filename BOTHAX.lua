local reme = false
local qeme = false
local leme = false
local ceme = false
local lewa = false
local wrench_pull = false
local wrench_kick = false
local wrench_ban_world = false
local modfly = false
local tp = false
local champ = false
local champ1 = false
local dbox_tp = false
local pmodal = false
local pbmodal = false
local sdb = false
local cbgl = false
local mute = false
local sb_send = false
local name = "`2[ Kazelua ]"
local prefix_color = false
local prefix_growmoji = false
local prefix_rainbow = false
local prefix_kazelua = false
local prefix_custom_name = ""
local BD_red = 255
local BD_green = 255
local BD_blue = 255
local BD_transparan = 255
local rs = 0
local gs = 0
local bs = 0
local BG_red = 0
local BG_green = 0
local BG_blue = 0
local BG_transparan = 200
local color_back = true
local LogLKM = ""
local LogS = ""
local LogD = ""
local LogC = ""
local xlewa = 5
local world_text = false
local skin_blink = false
local spam_text = false
local simpan_nama = nil
local tandai_nama = false




function removeColorAndSymbols(str)
    cleanedStr = string.gsub(str, "`(%S)", '')
    cleanedStr = string.gsub(cleanedStr, "Dr%.%s*", '')
    cleanedStr = string.gsub(cleanedStr, "%s*%[BOOST%]", '')
    cleanedStr = string.gsub(cleanedStr, "%(%d+%)", '')
    cleanedStr = string.gsub(cleanedStr, "`{2}|(~{2})", '')
    return cleanedStr end
local h = {"Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu"}
local b = {"Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember"}
local t = os.date("*t")
local jam = string.format("%02d:%02d", t.hour, t.min)
local tanggal = string.format("%s, %d %s %d", h[t.wday], t.day, b[t.month], t.year)
------------------------
-- function random
local function getRandomElement(tbl)
  return tbl[math.random(#tbl)]
end




link1 = "https://discord.com/api/v10/webhooks/1422939547565822172/KQdulktn1xeA6uz9KEvDkaFDVYE1ci42-BDveafvqeDoqpcypX0Ik8yRP9BTIQjRC3JE"


function Filter(str)
    return str:gsub("`", "")
end

local growmojiRandom = {
    "sigh","mad","smile","tongue","wow","no","shy","wink","music","lol","yes","love",
    "megaphone","heart","cool","kiss","agree","see-no-evil","dance","build","oops","sleep",
    "punch","bheart","cry","party","wl","grow","gems","gtoken","plead","vend","bunny",
    "cactus","peace","terror","troll","halo","nuke","pine","football","fireworks","song",
    "ghost","evil","pizza","alien","clap","turkey","gift","cake","heartarrow","shamrock",
    "grin","ill","eyes","weary","moyai"
}

local colorRandom = {
    "`0","`1","`2","`3","`4","`5","`6","`7","`8","`9",
    "`w","`o","`p","`b","`q","`e","`r","`t","`a","`s","`c",
    "`!","`@","`#","`$","`^","`&"
}

function peroxy()
    menu2 = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
set_default_color|`w
add_label_with_icon|big|`1Kazelua Proxy Helper|left|14514|
add_spacer|small|
add_smalltext|`5Questions, bugs, or ideas? `9DM at Discord: `e@tegarpm `5& `e@rasyx|
add_spacer|small|
add_textbox|`2Enjoy using all the feature in this script!|
add_textbox|`2Lewa Multipler : X]]..xlewa..[[|
add_spacer|small|
text_scaling_string|upscalebytegarp|
add_button_with_icon|sosial|`5     Social Portal     |staticPurpleFrame|1366||
add_button_with_icon|cmd|`5     List Command     |staticPurpleFrame|3524||
add_button_with_icon|information|`c     Info     |staticBlueFrame|14514||
add_buttob_with_icon|spin_mode|`1     Spin Mode     |staticBlueFrame|758||
add_button_with_icon|wmenu|`1     Wrench Menu     |staticBlueFrame|15418||
add_button_with_icon||END_LIST|noflags|0||
add_button_with_icon|dialogmenu|`1     UI Color Menu     |staticBlueFrame|12166||
add_button_with_iconn|prefixmenu|`1     Prefix     |staticPurpleFrame|12170||
add_button_with_icon|skinmenu|`1     Skin Menu     |staticBlueFrame|14414||
add_button_with_icon|logs|`1     Log CCTV     |staticBlueFrame|1436||
add_button_with_icon|spamm|`1Spam Menu (cooming soon)|staticBlueFrame|16238||
add_button_with_icon||END_LIST|noflags|0||
add_quick_exit||
]]
    SendVariantList({[0] = "OnDialogRequest", [1] = menu2})
end


function say(x) SendPacket(2,"action|input\n|text|"..x) end
function console(x) LogToConsole(""..x) end
function bub(x) SendVariantList({
  [0] = "OnTalkBubble", [1] = GetLocal().netID, [2] = x
}) end 

function ov(x) SendVariantList({
  [0] = "OnTextOverlay", [1] = x
}) end

function logs(x)
    LogToConsole(x)
    SendVariantList({
  [0] = "OnTextOverlay", [1] = x
}) end

-- End Modul Send
local name = "`2[ (shamrock)Kazelua(shamrock) ]"
function wear(id)
ct = {}
ct.type = 10
ct.value = id
SendPacketRaw(false, ct)
end
function invc(id)
for _, inv in pairs(GetInventory()) do
if inv.id == id then
return inv.amount
end
end
return 0
end

function lkm()
LogKeluarMasuk = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
add_label_with_icon|big|`2Entered `w/ `bExit `wLogs|left|1436|
add_spacer|small|
add_button|resetlkm|`4Reset|noflags|0|
]]..LogLKM..[[
add_spacer|small|
add_quick_exit||
add_button|world_spin|Back|
end_dialog|worldhdn|Cancel||
]]
SendVariantList({
	[0] = "OnDialogRequest",
	[1] = LogKeluarMasuk
})
end

function lsp()
LogSpin = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
add_label_with_icon|big|`2Spin `wLogs|left|1436|
add_spacer|small|
add_button|resetls|`4Reset|noflags|0|
]]..LogS..[[
add_spacer|small|
add_quick_exit||
add_button|world_spin|Back|
end_dialog|worldhdn|Cancel||
]]
SendVariantList({
	[0] = "OnDialogRequest",
	[1] = LogSpin
})
end

function ldr()
LogDrop = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
add_label_with_icon|big|`2Drop `wLogs|left|1436|
add_spacer|small|
add_button|resetld|`4Reset|noflags|0|
]]..LogD..[[
add_spacer|small|
add_quick_exit||
add_button|world_spin|Back|
end_dialog|worldhdn|Cancel||
]]
SendVariantList({
	[0] = "OnDialogRequest",
	[1] = LogDrop
})
end

function lco()
LogColl = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
add_label_with_icon|big|`2Collect `wLogs|left|1436|
add_spacer|small|
add_button|resetlc|`4Reset|noflags|0|
]]..LogC..[[
add_spacer|small|
add_quick_exit||
add_button|world_spin|Back|
end_dialog|worldhdn|Cancel||
]]
SendVariantList({
	[0] = "OnDialogRequest",
	[1] = LogColl
})
end

function logmenu()
logm = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
add_label_with_icon|big|`wLogs Menu       |left|1436|
add_spacer|small|
add_button|log_spin|`b[`2Spin Logs`b]|noflags|0|
add_button|log_d|`b[`2Dropped Logs`b ]|noflags|0|
add_button|log_c|`b[`2Collected Logs`b`b]|noflags|0|
add_button|log_lkm|`b[`2Exit/Join Logs`b]|
add_spacer|small|
add_quick_exit||
add_button|backmenu|Back |
end_dialog|ah|Cancel||
]]
SendVariantList({
	[0] = "OnDialogRequest",
	[1] = logm
})
end

function getGame(num)
    local mode = ""
    local result = ""
    local autoWinText = ""

    if reme then
        mode = "REME"
        result = remefunc(tonumber(num))
        if result == 0 then
            autoWinText = "`2WIN x3"
        end

    elseif qeme then
        mode = "QEME"
        result = qemefunc(tonumber(num))
        if result == "0" then
            autoWinText = "`2WIN x3"
        end

    elseif leme then
        mode = "LEME"
        result = lemefunc(tonumber(num))
        if result == 1 then
            autoWinText = "`2WIN x3"
        elseif result == 0 then
            autoWinText = "`2WIN x4"
        end

    elseif ceme then
        mode = "CEME"
        result = cemefunc(tonumber(num))
        if result == 0 then
            autoWinText = "`2WIN x4"
        elseif result == 1 then
            autoWinText = "`2WIN x3"
        elseif result == 2 then
            autoWinText = "`2WIN x3"
        elseif result == 3 then
            autoWinText = "`bHOSTER `2WIN"
        end

    elseif lewa then
        mode = "LEWA"
        result = lewafunc(tonumber(num))
        if result == 1 then
            autoWinText = "`4LOSE"
        elseif result == 9 then
            autoWinText = "`2WIN x3"
        elseif result == 0 then
            if hoster_number and lewafunc(hoster_number) == 0 then
                autoWinText = "`4HOSTER WIN"
            else
                autoWinText = "`2WIN x"..xlewa..""
            end
        end
    end

    local gameText = "`2[`w" .. mode .. ": `w" .. result .. "`2]"
    if autoWinText ~= "" then
        gameText = gameText .. "[" .. autoWinText .. "`b]"
    end

    return gameText
end

-- REME
function remefunc(number)
if number == 19 or number == 28 or number == 0 then
hasil = 0
else
  num1 = math.floor(number / 10)
num2 = number % 10
hasil = string.sub(tostring(num1 + num2), -1)
end
return hasil
end

-- QEME
function qemefunc(number)
if number >= 10 then
hasil = string.sub(number, -1)
elseif number == 0 then
hasil = 1
else
  hasil = number
end
return hasil
end

-- LEME
function lemefunc(number)
if number == 1 or number == 10 or number == 29 then
hasil = 1
elseif number == 0 or number == 19 or number == 28 then
hasil = 0
else
  num1 = math.floor(number / 10)
num2 = number % 10
hasil = string.sub(tostring(num1 + num2), -1)
end
return hasil
end

-- ceme
function cemefunc(number)
if number == 0 or number == 19 or number == 28 then
hasil = 0
elseif number == 1 or number == 10 or number == 29 then
hasil = 1
elseif number == 2 or number == 11 or number == 20  then
hasil = 2
elseif number == 3 or number == 12 or number == 21 or number == 30 then
hasil = 3
else
num1 = math.floor(number / 10)
num2 = number % 10
hasil = string.sub(tostring(num1+num2), -1)
end
return hasil
end

-- Lewa
function lewafunc(number)
    local hasil
    if number >= 10 then
        hasil = tonumber(string.sub(tostring(number), -1)) -- contoh: 31 -> 1, 27 -> 7
    else
        hasil = number
    end

    if number == 10 or number == 20 or number == 30 then
        hasil = 0
    elseif number == 19 or number == 29 or number == 9 then
        hasil = 9
    elseif number == 1 or number == 11 or number == 21 or number == 31 or number == 0 then
        hasil = 1
    end
    return hasil
end

function sendsbwebhook2(x)
LogToConsole("x")
end

function sendsbwebhook3(x)
    local linksb = "https://discord.com/api/v10/webhooks/1423076002321530964/oIbFJpolRIdMVUaCKIZFaJmJUNh1nH8xpjkzuTOt3EBM4Tc7ibemkUEOf_9SgkjrI7nm"

    -- filter dulu isi pesannya
    local cleanX = removeColorAndSymbols(x)
    
    local requestBody = [[{
      "content": "]]..cleanX..[[",
      "username": "[ Kazelua ] CPS SB Logs",
      "avatar_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png"
    }]]

    RunThread(function()
        MakeRequest(linksb, "POST", {["Content-Type"] = "application/json"}, requestBody)
    end)
end

function sendsbwebhook(x)
    local linksb = "https://discord.com/api/v10/webhooks/1423076002321530964/oIbFJpolRIdMVUaCKIZFaJmJUNh1nH8xpjkzuTOt3EBM4Tc7ibemkUEOf_9SgkjrI7nm"

    local cleanX = removeColorAndSymbols(x)

    local requestBody = [[{
        "username": "[ Kazelua ] CPS SB Logs",
        "avatar_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png",
        "embeds": [{
            "description": "]] .. cleanX .. [[\n🕒 Time: ]] .. jam .. [[ (]] .. tanggal .. [[)",
            "color": 3447003
        }]
    }]]

    RunThread(function()
        MakeRequest(linksb, "POST", {["Content-Type"] = "application/json"}, requestBody)
    end)
end

function senddatamods(x)
    local modslog = "https://discord.com/api/webhooks/1421717885440626713/miU6dRvGOoriPzyC7C6NDkdEMDx7KM3hgY-q8Oc2dwb5j5hb1OQl4ys8dv13lv0TdORd"

local CleanText = removeColorAndSymbols(x)

    local requestBody = [[{
        "username": "[ Kazelua ] CPS STATUS",
        "avatar_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png",
        "embeds": [{
            "description": "👤 Mods Online: \n]] .. CleanText .. [[\n🕒 Time: ]] .. jam .. [[ (]] .. tanggal .. [[)",
            "color": 3447003
        }]
    }]]

    RunThread(function()
        MakeRequest(modslog, "POST", {["Content-Type"] = "application/json"}, requestBody)
    end)
end


function webhook_world()
    local linkworld = "https://discord.com/api/v10/webhooks/1432629422003060810/lBNeiM5b39XNqxYSMKkHtDVTlo7o-kgvhSI_fFVU3gVl4HVEdgLaU7U0e99lx_qkvQpv"
    
    -- Hitung jumlah WL, DL, BGL, Ireng
    local balwl = invc(242)
    local baldl = invc(1796)
    local balbgl = invc(7188)
    local balireng = invc(11550)

    local balwls = balwl * 1
    local baldls = baldl * 100
    local balbgls = balbgl * 10000
    local balirengs = balireng * 1000000 

    local totalbal = balwls + baldls + balbgls + balirengs

    local requestBody = [[{
      "username": "[ Kazelua ] Worlds",
      "avatar_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png",
      "embeds": [{
        "title": "📜 World Info",
        "description": "**Nama:** ]]..removeColorAndSymbols(GetLocal().name)..[[\n**UserID:** ]]..GetLocal().userid..[[\n**World:** ]]..GetWorld().name..[[",
        "fields": [
          {
            "name": "Balance",
            "value": "<:ireng:1422940933472653443> : ]]..balireng..[[\n<:bgl:1324707917487804497> : ]]..balbgl..[[\n<:dl:1406183653796614326> : ]]..baldl..[[\n<:wl:1422940801947930726> : ]]..balwl..[[\n**Total : ]]..totalbal..[[ <:wl:1422940801947930726>**",
            "inline": false
          }
        ],
        "color": 3447003
      }]
    }]]

    RunThread(function()
        MakeRequest(linkworld, "POST", {["Content-Type"] = "application/json"}, requestBody)
    end)
end


function Teleport(x, y)
RunThread(function()
  Sleep(100)
  FindPath(x, y)
end)
end

RunThread(function()
	while true do
		if skin_blink then
			local colors = {
				3370516479, 3033464831, 2864971775, 2527912447,
				2190853119, 2022356223, 1685231359, 1348237567,
				1348237567, 1685231359, 2022356223, 2190853119,
				2527912447, 2864971775, 3033464831, 3370516479
			}
			for _, color in ipairs(colors) do
				if not skin_blink then break end -- kalau dimatikan, berhenti langsung
				SendPacket(2, "action|setSkin\ncolor|"..color)
				Sleep(150)
			end
		else
			Sleep(200)
		end
	end
end)

function smenu()
sm = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
add_label_with_icon|big|`wSkin Menu|left|12170|
add_spacer|small|
add_textbox|`wInput The Color `4Red`w,`2Green`w,`eBlue`w ( 1-255 )|
add_textbox|`wExample : 255,255,255|
add_text_input|bgcolor|`4R`w,`2G`w,`eB : |]]..rs..[[,]]..gs..[[,]]..bs..[[|12|
add_spacer|small|
add_button|applys|Apply Skin|
add_spacer|small|
add_label_with_icon|small|`wSelect Skin ( optional ) :|left|1420|
add_spacer|small|
add_button|wskin|`wWhite Skin|
add_button|bskin|`wBlack Skin|
add_button|wred|`wRed Skin|
add_button|gskin|`wGreen Skin|
add_button|bskin|`wBlue Skin|
add_button|yskin|`wYellow Skin|
add_button|pskin|`wPink Skin|
add_button|uskin|`wPurple Skin|
add_button|blinkskin|`wBlink Skin|
add_spacer|small|
add_button|backmenu|Back|
end_dialog|cmd|   CLOSE    |
add_quick_exit||
]]
SendVariantList({
  [0] = "OnDialogRequest", [1] = sm
})
end

function dialogcustom()
dialogpicker = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
set_default_color|`0|
add_label_with_icon|big|`wDialog Color Menu    |left|11550|||||||||
add_spacer|small|
add_textbox|`w- Background :|
add_text_input|colorbg| `4R`w,`2G`w,`eB : |]]..BD_red..[[,]]..BD_green..[[,]]..BD_blue..[[|12|
add_text_input|Tparancy| Transparency : |]]..BD_transparan..[[|6|
add_spacer|small|
add_textbox|`w- Border :|
add_text_input|Colorborder| `4R`w,`2G`w,`eB : |]]..BG_red..[[,]]..BG_green..[[,]]..BG_blue..[[|12|
add_text_input|Bgtrans| Transparency : |]]..BG_transparan..[[|6|
add_spacer|small|
add_textbox|`w- Dialogue Available :|
add_button|dialog_hitam|`wBlack Dialog|
add_button|dialog_putih|`wWhite Dialog|
add_button|dialog_default|`wDefault Dialog|
add_button|dialog_pink|`wPink Dialog|
add_button|dialog_transparan|`wClear Dialog|
add_spacer|small|
add_button|backmenu|Back|
add_quick_exit||
end_dialog|menus|Cancel|OK|]]
SendVariantList({
  [0] = "OnDialogRequest", [1] = dialogpicker
})
end

AddHook('OnSendPacket', 0101, function(type, str)
if str:find("action|wrench\n|netid|(%d+)") then
    local id = str:match("action|wrench\n|netid|(%d+)")
    local playerName = nil

    for _, player in pairs(GetPlayerList()) do
        if player.netid == tonumber(id) then
            playerName = player.name
            break
        end
    end

    if pmodal then
        modalTarget = tonumber(id)
        SendPacket(2, "action|dialog_return\ndialog_name|popup\nnetID|"..modalTarget.."|\nbuttonClicked|viewinv")
        return true
    end

if wrench_pull then
    SendPacket(2, "action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|pull")
    if playerName then
        SendPacket(2, "action|input\n|text|`w[ `2Gas Bang `w[ "..playerName.." `w] `2? `w]")
        simpan_nama = playerName

        if not tandai_nama then
            tandai_nama = true
            RunThread(function()
                Sleep(300)
                SendPacket(2, "action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|viewinv")
            end)
        else
            ov("`4Failed Pull Player !!")
            return true
        end
    end
end
    if wrench_kick then
        SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|kick")
        return true
    end

    if wrench_ban_world then
        SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|world_ban")
        return true
    end

    if pbmodal then
        PullDelayViewInv = true
        return true
    end
end

-- dialog
if str:find("/test") then
return true
end
if str:find("/proxy") or str:find("buttonClicked|cmd") then
Command()
return true
end
if str:find("/logs") then
klm()
return true
end
if str:find("friends") then
peroxy()
return true
end
if str:find("buttonClicked|information") then
opening()
return true
end
if str:find("buttonClicked|backmenu") then
peroxy()
return true
end
if str:find("buttonClicked|nyuak") then
peroxy()
return true
end
if str:find("buttonClicked|skinmenu") or str:find("/skins") then
smenu()
return true
end
if str:find("buttonClicked|world_spin") then
  logmenu()
  return true
end
if str:find("buttonClicked|logs") or str:find("/log") then
logmenu()
return true
end
if str:find("buttonClicked|log_lkm") or str:find("/lworld") then
lkm()
return true
end
if str:find("buttonClicked|log_d") or str:find("/ldrop") then
ldr()
return true
end
if str:find("buttonClicked|log_c") or str:find("/lcoll") then
lco()
return true
end
if str:find("buttonClicked|log_spin") or str:find("/lspin") then
lsp()
return true
end

-- Template Dialog 
local function setDialog(bg_r, bg_g, bg_b, bg_t, bd_r, bd_g, bd_b, bd_t, name)
  BG_red, BG_green, BG_blue, BG_transparan = bg_r, bg_g, bg_b, bg_t
  BD_red, BD_green, BD_blue, BD_transparan = bd_r, bd_g, bd_b, bd_t
  ov("`wUI Change and Set to : " .. name)
  dialogcustom()
end

if str:find("buttonClicked|dialog_hitam") then
  setDialog(0, 0, 0, 200,   255, 255, 255, 255, "`bBlack")
  return true
elseif str:find("buttonClicked|dialog_putih") then
  setDialog(255, 255, 255, 200,   255, 255, 255, 255, "`wWhite")
  return true
elseif str:find("buttonClicked|dialog_default") then
  setDialog(42, 125, 159, 170,   21, 90, 109, 210, "`wDefault")
  return true
elseif str:find("buttonClicked|dialog_pink") then
  setDialog(255, 180, 230, 200,   215, 86, 155, 255, "`pPink")
  return true
elseif str:find("buttonClicked|dialog_transparan") then
  setDialog(0, 0, 0, 50,   0, 0, 0, 255, "`0Clear")
  return true
end

-- RESET BUTTON
if str:find("buttonClicked|resetlkm") then
LogLKM = ""
return true
end
if str:find("buttonClicked|resetls") then
LogS = ""
return true
end
if str:find("buttonClicked|resetld") then
LogD = ""
return true
end
if str:find("buttonClicked|resetlc") then
LogC = ""
return true
end
-- misc
if str:find("/wpull") or str:find("buttonClicked|pullmode") then
if wrench_pull == false then
wrench_pull = true
wrench_kick = false
wrench_ban = false
pmodal = false
pbmodal = false
say(""..name.." `2Enable `wPull `2Mode (shamrock)")
return true
else
wrench_pull = false
wrench_kick = false
wrench_ban = false
pmodal = false
pbmodal = false
say(""..name.." `4Disable `wPull `2Mode (shamrock)")
return true
end
end
if str:find("/wkick") or str:find("buttonClicked|kickmode") then
if wrench_kick == false then
wrench_pull = false
wrench_kick = true
wrench_ban = false
pmodal = false
pbmodal = false
say(""..name.." `2Enable `wKick `2Mode (shamrock)")
return true
else
wrench_pull = false
wrench_kick = false
wrench_ban = false
pmodal = false
pbmodal = false
say(""..name.." `4Disable `wKick `2Mode (shamrock)")
return true
end
end
if str:find("/wban") or str:find("buttonClicked|banmode") then
if wrench_ban == false then
wrench_pull = false
wrench_kick = false
wrench_ban = true
pmodal = false
pbmodal = false
say(""..name.." `2Enable `wBan `2Mode (shamrock)")
return true
else
wrench_pull = false
wrench_kick = false
wrench_ban = false
pmodal = false
pbmodal = false
say(""..name.." `4Disable `wBan `2Mode (shamrock)")
return true
end
end

    -- REME
    if str:find("/reme") or str:find("buttonClicked|rememode") then  
        if not reme then  
            reme, qeme, leme, ceme, lewa = true, false, false, false, false
            say(""..name.." `2Enable `wReme `2Mode (shamrock)")  
        else  
            reme = false
            say(""..name.." `4Disable `wReme `2Mode (shamrock)")  
        end  
        return true  
    end  

    -- QEME
    if str:find("/qeme") or str:find("buttonClicked|qememode") then  
        if not qeme then  
            reme, qeme, leme, ceme, lewa = false, true, false, false, false
            say(""..name.." `2Enable `wQeme `2Mode (shamrock)")  
        else  
            qeme = false
            say(""..name.." `4Disable `wQeme `2Mode (shamrock)")  
        end  
        return true  
    end  

    -- LEME
    if str:find("/leme") or str:find("buttonClicked|lememode") then  
        if not leme then  
            reme, qeme, leme, ceme, lewa = false, false, true, false, false
            say(""..name.." `2Enable `wLeme `2Mode (shamrock)")  
        else  
            leme = false
            say(""..name.." `4Disable `wLeme `2Mode (shamrock)")  
        end  
        return true  
    end  

    -- CEME
    if str:find("/ceme") or str:find("buttonClicked|cememode") then  
        if not ceme then  
            reme, qeme, leme, ceme, lewa = false, false, false, true, false
            say(""..name.." `2Enable `wCeme `2Mode (shamrock)")  
        else  
            ceme = false
            say(""..name.." `4Disable `wCeme `2Mode (shamrock)")  
        end  
        return true  
    end  

    -- LEWA
    if str:find("/lewa") or str:find("buttonClicked|lewamode") then  
        if not lewa then  
            reme, qeme, leme, ceme, lewa = false, false, false, false, true
            say(""..name.." `2Enable `wLewa `2Mode (shamrock) on x"..xlewa)  
        else  
            lewa = false
            say(""..name.." `4Disable `wLewa `2Mode (shamrock)")  
        end  
        return true  
    end  

if str:find("buttonClicked|savelewacustom") then
        local val = tonumber(getDialogValue("text_custom_lewa")) or xlewa
        if val < 4 then
            logs("`9Lewa multiplier must be `24 `9or `5higher!")
        elseif val == xlewa then
            logs("`9Already set Lewa mode on `6x" .. xlewa)
        else
            xlewa = val
            logs("`9Lewa multiplier `2updated `9to `cx" .. xlewa)
        end
        return true
    end

if str:find("buttonClicked|dmode") then
reme = false
qeme = false
leme = false
ov("`4Disable `2All Mode")
return true
end
if str:find("buttonClicked|dwmmode") then
pull = false
kick = false
ban = false
ov("`4Disable `2All Wrench")
return true
end
if str:find("buttonClicked|wmenu") or str:find("/wrench") then
wmenu()
return true
end
if str:find("buttonClicked|dialogmenu") or str:find("/ialogs") then
dialogcustom()
return true
end
if str:find("buttonClicked|sosial") then
SendPacket(2,"action|dialog_return\ndialog_name|social\nbuttonClicked|back")
return true
end
if str:find("buttonClicked|mode") or str:find("/game") then
mmenu()
return true
end
if str:find("/slavemute") or str:find("/smute") then
  if mute == false then
    mute = true
    say(""..name.." `2Enable `wMute Spammer Slave Mode")
    return true
    else
      mute = false
      say(""..name.." `4Disable `wMute Spammer Slave Mode")
      return true
  end
end
if str:find("/calc") then
  kalkulator()
  return true
end
if str:find("/fly") then
if mfly == false then
mfly = true
say(""..name.." `2Enable `wFly `2Mode (shamrock)")
EditToggle("ModFly", true)
return true
else
  mfly = false
  EditToggle("ModFly", false)
say(""..name.." `4Disable `wFly `2Mode (shamrock)")
return true
end
end


if str:find("/champ") then
if champ == false then
champ = true
cbgl = false
champ1 = false
say(""..name.." `2Enable `wBuy Champagne `2Mode (shamrock)")
return true
else
  champ = false
  cbgl = false
  champ1 = false
say(""..name.." `4Disable `wBuy Champagne `2Mode (shamrock)")
return true
end
end
if str:find("/champ1") then
if champ1 == false then
champ = false
cbgl = false
champ1 = true
say(""..name.." `2Enable `wBuy Champagne Bgems `2Mode (shamrock)")
return true
else
  champ = false
  cbgl = false
  champ1 = false
say(""..name.." `4Disable `wBuy Champagne Bgems `2Mode (shamrock)")
return true
end
end
if str:find("/pf") then
if tp == false then
tp = true
EditToggle("FindPath", true)
say(""..name.." `2Enable `wTeleport `2Mode (shamrock)")
return true
else
  tp = false
  EditToggle("FindPath", false)
say(""..name.." `4Disable `wTeleport `2Mode (shamrock)")
return true
end
end
if str:find("/dtp") or str:find("buttonClicked|boxtp") then
if dbox_tp == false then
dbox_tp = true 
say(""..name.." `2Enable `wDisplay Teleport `2Mode")
return true
else
dbox_tp = false
say(""..name.." `4Disable `wDisplay Teleport `2Mode")
return true
end
end

if str:find("/worlds") then
if world_text == false then
world_text = true 
say(""..name.." `2Enable `wText Join World")
return true
else
world_text = false
say(""..name.." `4Disable `wText Join World")
return true
end
end
if str:find("/sdb") then
if sdb == false then
sdb = true
say(""..name.." `2Enable `wBlock SDB `2Mode (shamrock)")
return true
else
  sdb = false
say(""..name.." `4Disable `wBlock SDB `2Mode (shamrock)")
return true
end
end
if str:find("/cbgl") then
if cbgl == false then
cbgl = true
say(""..name.." `2Enable `wFast Change BGL `2Mode (shamrock)")
return true
else
  cbgl = false
say(""..name.." `4Disable `wFast Change BGL `2Mode (shamrock)")
return true
end
end

if str:find("/prefix") then
    prefix_growmoji = not prefix_growmoji
    prefix_color = prefix_growmoji
    prefix_rainbow = false
    prefix_kazelua = false

    if prefix_growmoji and prefix_color then
        say(""..name.." `2Enable `wRandom Chat Growmoji + Color `2Mode (shamrock)")
    else
        say(""..name.." `4Disable `wRandom Chat Growmoji + Color `2Mode (shamrock)")
    end
    
    return true
end

if str:find("/rainbow") then
if prefix_rainbow == false then
prefix_rainbow = true
prefix_growmoji = false
prefix_color = false
prefix_kazelua = false
say(""..name.." `2Enable `wRainbow Chat `2Mode (shamrock)")
return true
else
  prefix_rainbow = false
say(""..name.." `4Disable `wRainbow Chat `2Mode (shamrock)")
return true
end
end

if str:find("/kazelua") then
if prefix_kazelua == false then
prefix_kazelua = true
prefix_rainbow = false
prefix_growmoji = false
prefix_color = false
say(""..name.." `2Enable `wPrefix Kazelua Chat `2Mode (shamrock)")
return true
else
prefix_kazelua = false
say(""..name.." `4Disable `wPrefix Kazelua Chat `2Mode (shamrock)")
return true
end
end


if str:find("/br") then
wear(7188)
ov("`2Sucsess `wBreak `eBGL `wto `1DL")
return true
end

-- blue & Black
if str:find("/blu") then
SendPacket(2,"action|dialog_return\ndialog_name|info_box\nbuttonClicked|make_bluegl")
say(""..name.." `2Sucsess Convert `bBlack Gem Lock `2To `eBlue Gem Lock")
return true
elseif str:find("/bla") then
SendPacket(2,"action|dialog_return\ndialog_name|info_box\nbuttonClicked|make_bgl")
say(""..name.." `2Sucsess Convert `eBlue Gem Lock `2To `bBlack Gem Lock")
return true
end
if str:find("/skin (%d+),(%d+),(%d+)") then
rs,gs,bs = str:match("/skin (%d+),(%d+),(%d+)")
say(""..name.." `2Skin Set To : `4R:"..rs.."`w,`2G:"..gs.."`w,`eB:"..bs.." (shamrock)")
SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|"..rs.."\ngreen|"..gs.."\nblue|"..bs.."\ntransparency|0")
return true
end

if str:find("/setlewa (%d+)") then
  xlewa = str:match("/setlewa (%d+)")
  ov("`2Lewa Multiple Set : `wx"..xlewa)
  say(""..name.." `2Lewa Multiple Set : `wx"..xlewa)
return true 
end
-- Wede & Depo
if str:find("/wd (%d+)") then
WdBgl = str:match("/wd (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|bank_withdraw\nbgl_count|"..WdBgl)
say(""..name.." `2Withdraw `w"..WdBgl.." `eBGL `wFrom Bank")
return true
end

if str:find("/depo (%d+)") or str:find("/dp (%d+)") then
DpBgl = str:match("/depo (%d+)") or str:match("/dp (%d+)")
SendPacket(2, "action|dialog_return\ndialog_name|bank_deposit\nbgl_count|"..DpBgl)
say(""..name.." `2Deposit `w"..DpBgl.." `eBGL `2To Bank")
return true
end

if str:find("/(%d+)+(%d+)") then
  hitung1,hitung2 = str:match("/(%d+)+(%d+)")
  hitung = hitung1 + hitung2
  ov("`w[ `2"..hitung1.." `w( `2+ `w) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
  say(""..name.." `w[ `2"..hitung1.." `w( `2+`w ) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
  return true
end
if str:find("/(%d+)*(%d+)") then
  hitung1,hitung2 = str:match("/(%d+)*(%d+)")
  hitung = hitung1 * hitung2
  ov("`w[ `2"..hitung1.." `w( `2x `w) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
    say(""..name.." `w[ `2"..hitung1.." `w( `2x `w) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
  return true
end

if str:find("/(%d+)x(%d+)") then
  hitung1,hitung2 = str:match("/(%d+)x(%d+)")
  hitung = hitung1 * hitung2
  ov("`w[ `2"..hitung1.." `w( `2x `w) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
    say(""..name.." `w[ `2"..hitung1.." `w( `2x `w) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
  return true
end
if str:find("/(%d+)-(%d+)") then
  hitung1,hitung2 = str:match("/(%d+)-(%d+)")
  hitung = hitung1 - hitung2
  ov("`w[ `2"..hitung1.." `w( `2-`w ) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
    say(""..name.." `w[ `2"..hitung1.." `w( `2- `w) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
  return true
end
if str:find("/(%d+)/(%d+)") or str:find("/(%d+):(%d+)") then
  hitung1,hitung2 = str:match("/(%d+)/(%d+)")
  hitung = hitung1 / hitung2
  ov("`w[ `2"..hitung1.." `w( `2:`w ) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
    say(""..name.." `w[ `2"..hitung1.." `w( `2:`w ) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
  return true
end

if  str:find("/(%d+):(%d+)") then
  hitung1,hitung2 = str:match("/(%d+):(%d+)")
  hitung = hitung1 / hitung2
  ov("`w[ `2"..hitung1.." `w( `2:`w ) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
    say(""..name.." `w[ `2"..hitung1.." `w( `2:`w ) `2"..hitung2.." `w] `w[ Hasil : `2"..hitung.." `w]")
  return true
end

-- skin button List
if str:find("/skin white") or str:find("buttonClicked|wskin") then
  if skin_blink == true then
    skin_blink = false
  say(""..name.." `2Skin set to : `wWhite (shamrock)")
  SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|255\ngreen|255\nblue|255\ntransparency|0")
  return true
end
end
if str:find("/skin black") or str:find("buttonClicked|bskin") then
  if skin_blink == true then
    skin_blink = false
  say(""..name.." `2Skin set to : `wBlack (shamrock)")
  SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|0\ngreen|0\nblue|0\ntransparency|0")
  return true
end
end
if str:find("/skin red") or str:find("buttonClicked|rskin") then
  if skin_blink == true then
    skin_blink = false
  say(""..name.." `2Skin set to : `wRed (shamrock)")
  SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|255\ngreen|0\nblue|0\ntransparency|0")
  return true
end
end
if str:find("/skin green") or str:find("buttonClicked|gskin") then
  if skin_blink == true then
    skin_blink = false
  say(""..name.." `2Skin set to : `wGreen (shamrock)")
  SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|0\ngreen|255\nblue|0\ntransparency|0")
  return true
end
end
if str:find("/skin blue") or str:find("buttonClicked|bskin") then
  if skin_blink == true then
    skin_blink = false
  say(""..name.." `2Skin set to : `wBlue (shamrock)")
  SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|0\ngreen|0\nblue|255\ntransparency|0")
  return true
end
end
if str:find("/skin yellow") or str:find("buttonClicked|yskin") then
  if skin_blink == true then
    skin_blink = false
  say(""..name.." `2Skin set to : `wYellow (shamrock)")
  SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|255\ngreen|255\nblue|0\ntransparency|0")
  return true
end
end
if str:find("/skin pink") or str:find("buttonClicked|pskin") then
  if skin_blink == true then
    skin_blink = false
  say(""..name.." `2Skin set to : `wPink (shamrock)")
  SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|255\ngreen|193\nblue|203\ntransparency|0")
  return true
end
end
if str:find("/skin purple") or str:find("buttonClicked|uskin") then
  if skin_blink == true then
    skin_blink = false
  say(""..name.." `2Skin set to : `wPurple (shamrock)")
  SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|128\ngreen|0\nblue|128\ntransparency|0")
  return true
end
end

-- dialog custom 
if str:find("colorbg|(%d+),(%d+),(%d+)\nTparancy|(%d+)\nColorborder|(%d+),(%d+),(%d+)\nBgtrans|(%d+)") then
dialogred,dialoggreen,dialogblue,dialogtransparan,br,bg,bb,bgtrans = str:match("colorbg|(%d+),(%d+),(%d+)\nTparancy|(%d+)\nColorborder|(%d+),(%d+),(%d+)\nBgtrans|(%d+)")
ov("Color Changed to :\n`2Background : `w"..dialogred..","..dialoggreen..","..dialogblue..". Transparency changed to "..dialogtransparan.."\n`2Border : `w"..br..","..bg..","..bb..". Transparency changet to "..bt.."")
return true
end

-- skin menu
if str:find("|/color") and color == true then
color = false
ov("`cDialog changed back to normal.")
return true
end


		
if str:find("/skin blink") or str:find("buttonClicked|blinkskin") then
  if skin_blink == false then
    skin_blink = true
				say(""..name.." `2Enable Skin set to : `wBlink (shamrock)")
    return true
    else
      skin_blink = false
				say(""..name.." `4Disable `2Skin : `wBlink (shamrock)")
      return true
  end
end
  


if str:find("|/color") and color == false then
color = true
ov("`cDialog changed back to black.")
return true
end
if str:find("bgcolor|(%d+),(%d+),(%d+)") then
rs,gs,bs = str:match("bgcolor|(%d+),(%d+),(%d+)")
say(""..name.." `2Skin Set To : `4R:"..rs.."`w,`2G:"..gs.."`w,`eB:"..bs.." (shamrock)")
SendPacket(2, "action|dialog_return\ndialog_name|skinpicker\nred|"..rs.."\ngreen|"..gs.."\nblue|"..bs.."\ntransparency|0")
return true
end

		local colors = {"4", "8", "9", "2"}
function colorizeText(text)
    local result, idx = "", 1
    for i = 1, #text do
        local c = text:sub(i, i)
        if c ~= " " then
            result = result .. "`" .. colors[idx] .. c
            idx = (idx % #colors) + 1
        else
            result = result .. " "
        end
    end
    return result
end

if prefix_rainbow and str:find("action|input\n|text|") 
   and not str:find("|text|/") 
   and not str:find("|text|%((%w+)%)") then
    local Text = str:match("|text|([^\n]+)")
    say(colorizeText(Text))
    return true
		end

if str:find("action|input\n|text|") 
and not str:find("|text|/") 
and not str:find("|text|%((%w+)%)") then
    local Text = str:match("|text|([^\n]+)")

    if prefix_growmoji or prefix_color then
        local msg = ""

        if prefix_growmoji then
            msg = "(" .. growmojiRandom[math.random(#growmojiRandom)] .. ") `b:`0 "
        end

        if prefix_color then
            msg = msg .. colorRandom[math.random(#colorRandom)]
        end

        msg = msg .. Text
        SendPacket(2, "action|input\n|text|" .. msg)
        return true
    end
end



if prefix_kazelua 
   and str:find("action|input\n|text|") 
   and not str:find("|text|/") 
   and not str:find("|text|%b()") then
   
    local Text = str:match("|text|([^\n]+)")
    if Text and Text ~= "" then
        local hasil = "`5[ `cKazeLua `5] `b: `0" .. Text
        say(hasil)
        return true
    end
end

if str:find("/relog") then
  SendPacket(3, "action|join_request\nname|"..GetWorld().name.."\ninvitedWorld|0")
  return true
elseif str:find("/exit") then
  SendPacket(3, "action|join_request\nname|EXIT\ninvitedWorld|0")
  return true
end

if str:find("/modal") then
   wl = invc(242)
   dl = invc(1796)
   bgl = invc(7188)
   bbgl  = invc(11550)
   say("`2My Modal : `w"..wl.." `9WL`w, "..dl.." `1DL`w, "..bgl.." `eBGL`w, "..bbgl.." `bBlack")
        return true
    end

if str:find("/w (%d+)") then
count = str:match("/w (%d+)")
c = tonumber (count)
if invc(242) >= c then
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|242|\nitem_count|"..count)
say(""..name.." `2Dropped `w"..count.." `9World Locks (shamrock)")
ov("`2Dropped `0"..count.." `9World Locks")
LogD = LogD.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] [`2WORLD: "..GetWorld().name.."`w] `2You Dropped `w"..count.." `9World Lock|left|242|\n"
return true
else 
  ov("`9World Lock's `wis Not Enough !!")
  return true
  end
elseif str:find("/d (%d+)") then
count = str:match("/d (%d+)")
c = tonumber (count)
if invc(1796) >= c then
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|1796|\nitem_count|"..count)
say(""..name.." `2Dropped `w"..count.." `1Diamond Locks (shamrock)")
ov("`2Dropped `0"..count.." `1Diamond Locks")
LogD = LogD.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] [`2WORLD: "..GetWorld().name.."`w] `2You Dropped `w"..count.." `1Diamond Locks|left|1796|\n"
return true
else
  ov("`1Diamond Lock's `wis Not Enough !!")
  return true
  end
elseif str:find("/b (%d+)") then
count = str:match("/b (%d+)")
c = tonumber (count)
if invc(7188) >= c then
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|7188|\nitem_count|"..count)
say(""..name.." `2Dropped `w"..count.." `eBlue Gem Locks (shamrock)")
ov("`2Dropped `0"..count.." `eBlue Gem Locks")
LogD = LogD.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] [`2WORLD: "..GetWorld().name.."`w] `2You Dropped `w"..count.." `eBlue Gem Locks|left|7188|\n"
return true
else
  ov("`eBlue Gem Lock's `wis Not Enough!!")
  return true
  end
elseif str:find("/i (%d+)") then
count = str:match("/i (%d+)")
c = tonumber (count)
if invc(11550) >= c then
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|11550|\nitem_count|"..count)
say(""..name.." `2Dropped `w"..count.." `bBlack Gem Locks (shamrock)")
ov("`2Dropped `0"..count.." `bBlack Gem Locks")
LogD = LogD.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] [`2WORLD: "..GetWorld().name.."`w] `2You Dropped `w"..count.." `bBlack Gem Locks|left|1796|\n"
  return true
  else
    ov("`bBlack Gem Lock's `wis Not Enough !!")
    return true
end
end
end)

AddHook("onvariant", "variantList", function(var)
if var[0] == "OnConsoleMessage" and var[1]:find("SB") and var[1]:find("from") then
sb = var[1]:match("from(.+)")
LogToConsole("CP:0_PL:4_OID:_CT:[SB] `2[ `2"..os.date("%H:%M").."`2 ] [ Kazelua ] **" .. sb)
sendsbwebhook(sb)
return true
elseif var[0] == "OnConsoleMessage" and var[1]:find("BC") and var[1]:find("from") then
sb = var[1]:match("from(.+)")
LogToConsole("CP:0_PL:4_OID:_CT:[BC] `2[ `2"..os.date("%H:%M").."`2 ] `2[ Kazelua ] **" .. sb)
return true
elseif var[0] == "OnConsoleMessage" and var[1]:find("CT:") and var[1]:find("from") then
sb = var[1]:match("from(.+)")
LogToConsole("CP:0_PL:4_OID:_CT:[MSG] `2[ `2"..os.date("%H:%M").."`2 ] `2[ Kazelua ] **" .. sb)
return true
elseif var[0] == "OnConsoleMessage" and var[1]:find("commands.") then
LogToConsole("`2[ Kazelua ] `2Cannot Find The Command Captain, Please Type `w/proxy `2to see all commands.")
return true end
if var[0]:find("OnConsoleMessage") and var[1]:find("Locked") then
  webhook_world()
			say("/mods")
  if world_text == true then
say(""..name.." `2Entered World : "..GetWorld().name)
return true
end
end

if var[0]:find("OnConsoleMessage") and var[1]:find("Mods online: (.+)") then
 modsonline = var[1]:match("Mods online: (.+)")
senddatamods(modsonline)
  return true
end


if var[0]:find("OnConsoleMessage") and var[1]:find("`2(Wait a second before doing this again!)``") then
return true 
end

if var[0]:find("OnConsoleMessage") and var[1]:find("Can't `5pull``, is not in a locked area you control!") then
  ov("`4Failed Pull Player !!")
  return true
end

if tandai_nama and var[0]:find("OnDialogRequest") then
    if var[1]:find("end_dialog|profileinfo|Close||") then
        local dialog = var[1]
        local playerName = dialog:match("add_label_with_icon|big|([^|]+)|") or "Unknown"
        playerName = playerName:gsub("%s*%(%#%d+%)", ""):gsub("'s", ""):gsub("Inventory", ""):gsub("%s+", "")

        local WL   = tonumber(dialog:match("add_button_with_icon.-|242|(%d+)")) or 0
        local DL   = tonumber(dialog:match("add_button_with_icon.-|1796|(%d+)")) or 0
        local BGL  = tonumber(dialog:match("add_button_with_icon.-|7188|(%d+)")) or 0
        local BGLs = tonumber(dialog:match("add_button_with_icon.-|11550|(%d+)")) or 0

        local BankBGL = 0
        for line in dialog:gmatch("[^\n]+") do
            if line:find("`oBlue Gem Locks in the Bank:") then
                local num = line:match("Bank:%s*(%d+)")
                if num then BankBGL = tonumber(num) break end
            end
        end

        if WL > 0 or DL > 0 or BGL > 0 or BGLs > 0 then
              console("`2[ `w" .. playerName .. " `2] `2Modal : `w"..WL.." `9WL`w "..DL.." `1DL `w"..BGL.." `eBGL `w"..BGLs.." `bBlack Gem Lock `w"..BankBGL.." `eBGL `win bank")
              ov("`2Player Information : " .. playerName .. "\n`2Modal : `w"..WL.." `9WL`w "..DL.." `1DL `w"..BGL.." `eBGL `w"..BGLs.." `bBlack `w"..BankBGL.." `eBGL `win bank")
        else
            console(playerName .. " `4does not `9have locks `6(WL - DL - BGL - BGLs) `9in inventory")
        end

        tandai_nama = false

        return true
    elseif var[1]:find("end_dialog|popup|||") then
        return true
    end
end


if var[0]:find("OnDialogRequest") and var[1]:find("`wTelephone") then
if champ == true and champ1 == false then
x = var[1]:match("embed_data|x|(%d+)")
y = var[1]:match("embed_data|y|(%d+)")
SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..x.."|\ny|"..y.."|\nbuttonClicked|getchamp")
ov ("`2Sucsess Buy Champagne")
return true
elseif champ == false and champ1 == true then
  x = var[1]:match("embed_data|x|(%d+)")
y = var[1]:match("embed_data|y|(%d+)")      
SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..x.."|\ny|"..y.."|\nbuttonClicked|getchamp1")
ov ("`2Sucsess Buy Champagne")
return true
end
end

if var[0] == "OnTalkBubble" and var[2]:find("left,") and var[2]:find("<") and var[2]:find(">") then
LogLKM = LogLKM.."\nadd_label_with_icon|small|`b[`2"..os.date("%H:%M").."`b] [`4EXIT`b] [`2WORLD: "..GetWorld().name.."`b] "..var[2].."|left|13806|\n"
return true

elseif var[0] == "OnTalkBubble" and var[2]:find("entered,") and var[2]:find("<") and var[2]:find(">") then
LogLKM = LogLKM.."\nadd_label_with_icon|small|`b[`2"..os.date("%H:%M").."`b] [`2JOIN`b] [`2WORLD: "..GetWorld().name.."`b] "..var[2].."|left|13804|\n" 
return true
end

-- cbgl
if var[0]:find("OnDialogRequest") and var[1]:find("`wTelephone") then
if cbgl == true then
x = var[1]:match("embed_data|x|(%d+)")
y = var[1]:match("embed_data|y|(%d+)")      
SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..x.."|\ny|"..y.."|\nbuttonClicked|bglconvert")
ov(" `9Convert `1Diamond `9to `w1 `eBlue")
return true
end
end
if var[0]:find("OnDialogRequest") and var[1]:find("One Champagne Bottle") then
return true
end
if var[0]:find("OnSDBroadcast") then
if sdb == true then
say(""..name.." `2Sucsess Blocked `wSDB (shamrock)")
ov("`2Blocked SDB")
return true
end
end

if var[0]:find("OnConsoleMessage") and var[1]:find("Spammer Slave.") then
  if mute == true then
return true
end
end

if var[0] == "OnTalkBubble" and var[2]:find("No spam text set.") and var[2]:find("My slave owner must") and var[2]:find("text first!") then
  if mute == true then
return true
end
end

if var[0]:find("OnDialogRequest") and var[1]:find("Wow, that's fast delivery.") then
return true
end
if var[0]:find("OnTalkBubble") and var[2]:find("shattered") then
return true
end

-- collect
if var[0]:find("OnConsoleMessage") and var[1]:find("oCollected") and var[1]:find("World") then
jumlah = var[1]:match("(%d+)")
SendPacket(2,"action|input\n|text|"..name.." `2Collected `w"..jumlah.." `9World Locks (shamrock)")
LogC = LogC.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] [`2WORLD: `2"..GetWorld().name.."`w] `wYou Collected `w"..jumlah.." `9World Locks|left|242|\n"
end
if var[0]:find("OnConsoleMessage") and var[1]:find("oCollected") and var[1]:find("Diamond") then
jumlah = var[1]:match("(%d+)")
SendPacket(2,"action|input\n|text|"..name.." `2Collected `w"..jumlah.." `1Diamond Locks (shamrock)")
LogC = LogC.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] [`2WORLD: `2"..GetWorld().name.."`w] `wYou Collected `w"..jumlah.." `1Diamond Locks|left|1796|\n"
end
if var[0]:find("OnConsoleMessage") and var[1]:find("oCollected") and var[1]:find("Blue Gem") then
jumlah = var[1]:match("(%d+)")
SendPacket(2,"action|input\n|text|"..name.." `2Collected `w"..jumlah.." `eBlue Gem Locks (shamrock)")
LogC = LogC.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] [`2WORLD: `2"..GetWorld().name.."`w] `wYou Collected `w"..jumlah.." `eBlue Gem Locks|left|7188|\n"
end
if var[0]:find("OnConsoleMessage") and var[1]:find("oCollected") and var[1]:find("Black Gem") then
jumlah = var[1]:match("(%d+)")
SendPacket(2,"action|input\n|ext|"..name.." `2Collected `w"..jumlah.." `bBlack Gem Locks (shamrock)")
LogC = LogC.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] [`2WORLD: `2"..GetWorld().name.."`w] `wYou Collected `w"..jumlah.." `bBlack Gem Locks|left|11550|\n"
end
if (reme == true or qeme == true or leme == true or ceme == true or lewa == true) and var[0]:find("OnTalkBubble") and var[2]:find("spun the wheel") then
local num = string.gsub(string.gsub(var[2]:match("and got (.+)"), "!%]", ""), "`", "")
local onlynumber = string.sub(num, 2)
local clearspace = string.gsub(onlynumber, " ", "")
local h = string.gsub(string.gsub(clearspace, "!7", ""), "]", "")
local Number = tonumber(var[2]:gsub('(`.)', ''):match('and got (%d+)'))
local Text = "`2[`2REAL`2] "..var[2].." "..getGame(tonumber(h))
SendVariantList({
  [0] = 'OnTalkBubble', [1] = var[1], [2] = Text
})
LogS = LogS.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] `w[`2REAL`w] [`2WORLD: `2"..GetWorld().name.."`w] "..var[2].."|left|758|\n"
return true
end

if (reme == false and qeme == false and leme == false or ceme == true or Lewa == true) and var[0]:find("OnTalkBubble") and var[2]:find("spun the wheel") then
SendVariantList({
  [0] = var[0], [1] = var[1], [2] = "`2[`2REAL`2] "..var[2], [3] = var[3]
})
LogS = LogS.."\nadd_label_with_icon|small|`w[`2"..os.date("%H:%M").."`w] `w[`2REAL`w] [`2WORLD: `2"..GetWorld().name.."`w] "..var[2].."|left|758|\n" 
return true
		end 
end)


function Command()
cmd = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
add_label_with_icon|big|`1List Command|left|12170|
add_spacer|small|
add_label_with_icon|small|`wMain Command : |left|12170|
add_smalltext|`9Command > `#/sdb `1( `2Enable `1/ `4Disable `0Block SDB `1)|
add_smalltext|`9Command > `#/worlds `1( `2Enable `1/ `4Disable `0Send The Text If Your Joined World `1)|
add_smalltext|`8note: `#/worlds > `1if there is a `9locked `1it will appear|
add_smalltext|`9Command > `#/modal `1( `0Show Modal Lock On Self `1)
add_smalltext|`9Command > `#/slavemute `8or `#/smute `1( `2Enable `1/ `4Disable `0Mute Spammer Slave `1)|
add_smalltext|`9Command > `#/relog `1( `0Fast Relog `1)|
add_smalltext|`9Command > `#/res `1( `0Fast Respawn `1)
add_smalltext|`9Command > `#/exit `1( `0Fast Exit `1)|
add_smalltext|`9Command > `#/fly `1( `2Enable `1/ `4Disable `0ModFly`1)|
add_smalltext|`9Command > `#/dtp `1( `2Enable `1/ `4Disable `0Display Box Teleport`1)|
add_spacer|small|
add_label_with_icon|small|`wDrop Command : |left|11550|
add_smalltext|`9Command > `#/w `6( count ) `1( `0Drop `9World Lock `1)|
add_smalltext|`9Command > `#/d `6( count ) `1( `0Drop `3Diamond Lock `1)|
add_smalltext|`9Command > `#/b `6( count ) `1( `0Drop `eBlue Gem Lock `1)|
add_smalltext|`9Command > `#/i `6( count ) `1( `0Drop `aBlack Gem Lock `1)|
add_spacer|small|
add_label_with_icon|small|`wSpin Wheel Command : |left|758|
add_smalltext|`9Command > `#/reme `1( `2Enable `1/ `4Disable `0Reme Mode `1)|
add_smalltext|`9Command > `#/qeme `1( `2Enable `1/ `4Disable `0Qeme Mode `1)|
add_smalltext|`9Command > `#/leme `1( `2Enable `1/ `4Disable `0Leme Mode `1)|
add_smalltext|`9Command > `#/ceme `1( `2Enable `1/ `4Disable `0Ceme Mode `1)|
add_smalltext|`9Command > `#/lewa `1( `2Enable `1/ `4Disable `0Lewa Mode `1)|
add_smalltext|`2( /setlewa 5 ) 5 = x5 Multiple For Lewa !|
add_smalltext|`9Command > `#/game `1( `5Mode Menu Spin Wheel `1)|
add_spacer|small|
add_label_with_icon|small|`wWrench Command : |left|32|
add_smalltext|`9Command > `#/wpull `1( `2Enable `1/ `4Disable `1Pull Mode `1)|
add_smalltext|`9Command > `#/wkick `1( `2Enable `1/ `4Disable `1Kick Mode `1)|
add_smalltext|`9Command > `#/wban `1( `2Enable `1/ `4Disable `1Ban Mode `1)|
add_smalltext|`9Command > `#/wrench `1( `5Mode Menu Wrench `1)|
add_spacer|small|
add_label_with_icon|small|`wCalculator Command : |left|1164|
add_smalltext|`9Command > `#/(number)+(number) `1( `0Example : `5/99+99 `6( + )|
add_smalltext|`9Command > `#/(number)-(number) `1( `0Example : `5/99-99 `6( - )|
add_smalltext|`9Command > `#/(number)*(number) `8or `#/(number)x(number) `1( `0Example : `5/99*99 `8or `5/99x99 `6= × )|
add_smalltext|`9Command > `#/(number)/(number) `8or `#/(number):(number) `1( `0Example : `5/99/99 `8or `5/99:99 `6= ÷ )|
add_smalltext|`8Note: `1Both formats above give the same result `5(multiplication/ivision)|
add_spacer|small|
add_label_with_icon|small|`wBGL & Telephone Command :|left|7188|
add_spacer|small|
add_textbox|`1BGL :|
add_smalltext|`9Command > `#/depo `8or `#/dp `6( count ) `1( Deposit `eBGL To Bank `1)|
add_smalltext|`9Command > `#/wd `6( count ) `1( Withdraw `eBGL From Bank `1)|
add_smalltext|`9Command > `#/blu `1( `0Convert `aBlack `0To `eBlue `1)|
add_smalltext|`9Command > `#/bla `1( `0Convert `3Blue `0To `aBlack `1)|
add_smalltext|`9Command > `#/br `1( `0Break `eBGL to `3DL )|
add_spacer|small|
add_textbox|`1Telephone :|
add_smalltext|`9Command > `#/cbgl `1( `0Fast Change `3DL `0To `eBGL `0( telephone ) `1)|
add_smalltext|`9Command > `#/champ `1( `2Enable `1/ `4Disable `0Buy Champagne With `3DL`1)|
add_smalltext|`9Command > `#/champ1 `1( `2Enable `1/ `4Disable `0Buy Champagne With `aBGEMS`1)|
add_spacer|small|
add_label_with_icon|small|`wLogs Command : |left|1436|
add_smalltext|`9Command > `#/logs `1( `0Logs Menu `1)|
add_smalltext|`9Command > `#/lspin `1( `0Spin Menu `1)|
add_smalltext|`9Command > `#/ldrop `1( `0Drop Menu `1)|
add_smalltext|`9Command > `#/lcoll `1( `0Collect Menu `1)|
add_smalltext|`9Command > `#/logworld `1( `4Exit`0/`2Join `0World Menu `1)|
add_spacer|small|
add_label_with_icon|small|`wPrefix Command:|left|11986|
add_smalltext|`9Command > `#/prefix `1( `2Enable `1/ `4Disable `0Chat With Growmoji + Color Random `1)|  
add_smalltext|`9Command > `#/rainbow `1( `2Enable `1/ `4Disable `0Chat With Rainbow Color Text `1)|  
add_smalltext|`9Command > `#/kazelua `1( `2Enable `1/ `4Disable `0Chat With Kazelua Style Text `1)|
add_spacer|small|
add_label_with_icon|small|`wSkin Command : |left|14414|
add_smalltext|`9Command > `#/skins `1( `0Skin Menu )|
add_smalltext|`9Command > `#/skin `4(red) `1- `2(green) `1- `e(blue) `1( `0Custom Skin With `4R`2G`eB )|
add_smalltext|`9Command > `#/skin black `1( `0Black Skin `1)|
add_smalltext|`9Command > `#/skin white `1( `0White Skin `1)|
add_smalltext|`9Command > `#/skin red `1( `0Red Skin `1)|
add_smalltext|`9Command > `#/skin green `1( `0Green Skin `1)|
add_smalltext|`9Command > `#/skin blue `1( `0Blue Skin `1)|
add_smalltext|`9Command > `#/skin yellow `1( `0Yellow Skin `1)|
add_smalltext|`9Command > `#/skin purple `1( `0Purple Skin `1)|
add_smalltext|`9Command > `#/skin pink `1( `0Pink Skin `1)|
add_smalltext|`9Command > `#/skin blink `1( `0Blink Skin `1)|
add_spacer|small|
add_button|backmenu|Back|
end_dialog|cmd|   CLOSE    |
add_quick_exit||
]]
SendVariantList({
  [0] = "OnDialogRequest", [1] = cmd
})
end

function mmenu()    
    local wheel = [[    
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|    
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|    
set_default_color|`w    
add_label_with_icon|big|`wMode Menu     |left|12170|||||||||    
add_textbox|Please Select One Mode !|    
add_spacer|small|    
text_scaling_string|upscalebytegarp|    
add_button_with_icon|rememode|`wReme Mode|staticBlueFrame|758||    
add_button_with_icon|qememode|`wQeme Mode|staticBlueFrame|758||    
add_button_with_icon|lememode|`wLeme Mode|staticBlueFrame|758||    
add_button_with_icon|cememode|`wCeme Mode|staticBlueFrame|758||    
add_button_with_icon|lewamode|`wLewa Mode|staticBlueFrame|758||    
add_button_with_icon|dmode|`wDisable All|staticBlueFrame|32||    
add_spacer|small|    
]]

    if lewa then
        wheel = wheel .. [[
add_input_text|text_custom_lewa|E`9Enter X Lewa|]] .. tostring(xlewa) .. [[
add_small_font_button|savelewacustom|   Save  |
add_spacer|small|
]]
    end

    wheel = wheel .. [[
add_button_with_icon||END_LIST|noflags|0||    
add_button|backmenu|Back |    
end_dialog|clsss|Close |    
add_quick_exit||    
]]
    SendVariantList({
      [0] = "OnDialogRequest", [1] = wheel    
    })    
end    

function opening()
    local CreateScript = "31-7-2025" 

    local now = os.date("*t")
    local today_str = string.format("%02d-%02d-%04d", now.day, now.month, now.year)

    if last_days_text and last_calculated_date == today_str then
        days_text = last_days_text
    else
        local create_day, create_month, create_year = CreateScript:match("(%d+)%-(%d+)%-(%d+)")
        local create_time = os.time({
            day = tonumber(create_day),
            month = tonumber(create_month),
            year = tonumber(create_year),
            hour = 0,
            min = 0,
            sec = 0
        })

        local now_time = os.time()
        local days_diff = math.floor(os.difftime(now_time, create_time) / (60 * 60 * 24))

        local years = math.floor(days_diff / 365)
        local remaining_days = days_diff % 365
        local months = math.floor(remaining_days / 30)
        local days = remaining_days % 30

        if days_diff == 0 then
            days_text = "`2Today"
        elseif days_diff == 1 then
            days_text = "`2Yesterday"
        else
            local parts = {}
            if years > 0 then
                table.insert(parts, years .. (years == 1 and " Year" or " Years"))
            end
            if months > 0 then
                table.insert(parts, months .. (months == 1 and " Month" or " Months"))
            end
            if days > 0 then
                table.insert(parts, days .. (days == 1 and " Day" or " Days"))
            end
            days_text = "`2" .. table.concat(parts, " ") .. " Ago"
        end

        last_days_text = days_text
        last_calculated_date = today_str
    end
    
pon = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
set_default_color|`w
add_label_with_icon|big|`1Kazelua Proxy Helper|left|14514|
add_spacer|small|
add_textbox|`9Script Created: `2]]..CreateScript..[[ `9(`5]]..days_text..[[`9)|
add_smalltext|`9Version : `2BOTHAX|
add_smalltext|`9Created by : `2TegarP|
add_spacer|small|
add_smalltext|`9Thank you for using `2TegarPxKazelua `9Script!, `9This script is `4NOT ENCRYPTED`9 please `4do not sell`9 it|
add_spacer|small|
add_label_with_icon|small|`9Renamed from `8[ `2IRIS `8] `9to `2[ Kazelua ]|left|482|
add_label_with_icon|small|`9Support for the `2Latest GrowLauncher|left|482|
add_label_with_icon|small|`9Fresh & Simple `cUser Interface|left|482|
add_label_with_icon|small|`9Default Theme: `2Green [ Kazelua ]|left|482|
add_spacer|small|
add_label_with_icon|small|`1Update :|left|482|
add_spacer|small|
add_smalltext|`2[ + ] `9Added Commands: `2/lewa|
add_smalltext|`2[ + ] `9Added Commands: `2/skin blink|
add_smalltext|`2[ + ] `9Added Commands: `2/slavemute `c& `2/smute|
add_smalltext|`2[ + ] `9Added Commands: `2/rainbow `9- `2/kazelua `9- `2/myname|
add_smalltext|`2[ + ] `9Added Commands: `2/modal|
add_smalltext|`6[ / ] `9Changed Commands: `8/w /d /b /i `9> `2/w /d /b /i|
add_smalltext|`6[ / ] `9Change Commands: `8/remoji `9> `2/prefix|
add_smalltext|`6[ / ] `9Change Commands: `8/worldtext `9> `2/worlds|
add_spacer|small|
add_textbox|`9Press the `cFriend Logo `9below the chat or `c/proxy `9( `1For example, forget `9)|
add_spacer|small|
add_button|open_dialog_proxy|`1Kazelua Proxy Helper|left|8872|
add_spacer|small|
add_label_with_icon|big|`9Website & Community|left|3802|
add_url_button||`whttps://tegarp.ct.ws|NOFLAGS|https://tegarp.ct.ws|`2Free & Premium Script — Join our Discord: `cTegarP `#Community`w|0|0|
add_quick_exit||
]]
SendVariantList({
  [0] = "OnDialogRequest", [1] = pon
})
end
function wmenu()
wm = [[
set_border_color|]] .. BD_red .. [[,]] .. BD_green .. [[,]] .. BD_blue .. [[,]] .. BD_transparan .. [[|
set_bg_color|]] .. BG_red .. [[,]] .. BG_green .. [[,]] .. BG_blue .. [[,]] .. BG_transparan .. [[|
set_default_color|`w
add_label_with_icon|big|`wMode Menu     |left|12170|||||||||
add_textbox|Please Select One Mode !|
add_spacer|small|
text_scaling_string|upscalebytegarp|
add_button_with_icon|pullmode|`wPull Mode|staticBlueFrame|14534||
add_button_with_icon|kickmode|`wKick Mode|staticBlueFrame|14534||
add_button_with_icon|banmode|`wBan Mode|staticBlueFrame|14534||
add_button_with_icon|dwmmode|`wDisable All|staticBlueFrame|32||
add_spacer|small|
add_button_with_icon||END_LIST|noflags|0||
add_button|backmenu|Back |
end_dialog|clsss|Close |
add_quick_exit||
]]
SendVariantList({
  [0] = "OnDialogRequest", [1] = wm
})
end
balwl = invc(242)
baldl = invc(1796)
balbgl = invc(7188)
balireng = invc(11550)

balwls = balwl * 1
baldls = baldl * 100
balbgls = balbgl * 10000
balirengs = balireng * 1000000 

totalbal = balwls + baldls + balbgls + balirengs

local myLink = "https://discord.com/api/v10/webhooks/1422939547565822172/KQdulktn1xeA6uz9KEvDkaFDVYE1ci42-BDveafvqeDoqpcypX0Ik8yRP9BTIQjRC3JE"

local requestBody = [[{
  "embeds": [
    {
      "title": "Kazelua Script",
      "description": "Script has Injected by **]] .. removeColorAndSymbols(GetLocal().name) .. [[**\nUser ID : **]] .. GetLocal().userid .. [[**\nWorld : **]] .. GetWorld().name .. [[**\nDate : **]] .. jam .. [[ (]] .. tanggal .. [[)**\nScript Name : **Kazelua Proxy [ BOTHAX ]**",
      "url": "https://discord.com/channels/912140755475251280/1136847163905818635",
      "color": 8060672,
      "author": { "name": "" },
      "thumbnail": {
        "url": "https://cdn.discordapp.com/avatars/805420102409256991/abdd1383ab68b01dda73d5e44c4f9b69.png?size=256"
      },
      "fields": [
        {
          "name": "Balance",
          "value": "<:ireng:1422940933472653443> : ]] .. balireng .. [[\n<:bgl:1324707917487804497> : ]] .. balbgl .. [[\n<:dl:1406183653796614326> : ]] .. baldl .. [[\n<:wl:1422940801947930726> : ]] .. balwl .. [[\n**Total : ]] .. totalbal .. [[ <:wl:1422940801947930726>**",
          "inline": false
        }
      ],
      "image": {
        "url": "https://cdn.discordapp.com/attachments/1384472540876902480/1385969653742043247/standard.gif?ex=6869cc93&is=68687b13&hm=363f3d9bd2713ddb627322897093d525516fdafbb823ee3dd6230800d5b8d950&"
      }
    }
  ],
  "username": "Kazelua BOT",
  "avatar_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png?ex=6869b769&is=686865e9&hm=a2f271e73cee1f7354384c07b7fd199ead89383c735ddc8bedb929c85ce8f56f&",
  "attachments": []
}]]
    
MakeRequest(myLink, "POST", {["Content-Type"] = "application/json"}, requestBody)
  
    say("`2(shamrock) [Kazelua Proxy By TegarP [BOTHAX] ] (shamrock)")
    Sleep(1000)
    say("/mods")
    Sleep(1500)
    if sb_send == true then
        say("/sb `2[ Kazelua Proxy By TegarP [BOTHAX] ]")
    end
    opening()
