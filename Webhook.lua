local myLink = "https://discord.com/api/v10/webhooks/1409403145674686504/vwuQgoteymLEfrXTEO7UDQBmk0jUCUUAFH35TYyaUkFHRDKuLO-1lVagSwiLV62iNT6W"
local whlink = "https://discord.com/api/webhooks/1391678145362661448/IGwd_fmR_94NcZQYIYnoojtLWg-n5eYRyUZ1WNKNHjpE8pGsbLvFA4117gcb6sPlUvSu"
local userid = GetLocal().userid
local totalbal = "unlimited"

function removeColorAndSymbols(str)
    cleanedStr = string.gsub(str, "`(%S)", '')
    cleanedStr = string.gsub(cleanedStr, "Dr%.%s*", '')
    cleanedStr = string.gsub(cleanedStr, "%s*%[BOOST%]", '')
    cleanedStr = string.gsub(cleanedStr, "%(%d+%)", '')
    cleanedStr = string.gsub(cleanedStr, "`{2}|(~{2})", '')
    return cleanedStr 
end
local name = removeColorAndSymbols(GetLocal().name)

local h = {"Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu"}
local b = {"Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember"}
local t = os.date("*t")
local jam = string.format("%02d:%02d", t.hour, t.min)
local tanggal = string.format("%s, %d %s %d", h[t.wday], t.day, b[t.month], t.year)




local requestBody = [[
{
  "username": "Kazelua BOT",
  "avatar_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png",
  "embeds": [
    {
      "title": "📜 __**Kazelua Script Injected LOG's**__",
      "color": 3447003,
      "fields": [
        { "name": "🌍 World :", "value": "]]..GetWorld().name..[[", "inline": false },
        { "name": "👤 Nama :", "value": "]]..name..[[", "inline": false },
        { "name": "➡️ UserID :", "value": "]]..userid..[[", "inline": false },
        { "name": "💳 Balance :", "value": "]]..totalbal..[[", "inline": false },
        { "name": "🕒 DateTime :", "value": "]]..jam..[[ (]]..tanggal..[[)", "inline": false }
      ],
      "thumbnail": {
        "url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png"
      },
      "image": {
        "url": "https://media.tenor.com/XKYdazTApQcAAAAi/discord-loading.gif"
      },
      "footer": {
        "text": "Kazelua • Powered by TegarP",
        "icon_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png"
      }
    }
  ]
}
]]

MakeRequest(whlink, "POST", {["Content-Type"] = "application/json"}, requestBody)


  function lpg()
local requestBody = [[
{
  "username": "HorizonX BOT",
  "avatar_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png",
  "embeds": [
    {
      "title": "📜 __**Kazelua USER LOG's**__",
      "description": "📌 **Script Name : Kazelua Proxy Bhax**",
      "color": 3447003,
      "fields": [
        { "name": "🌍 World :", "value": "]]..GetWorld().name..[[", "inline": false },
        { "name": "👤 Nama :", "value": "]]..name..[[", "inline": false },
        { "name": "➡️ UserID :", "value": "]]..userid..[[", "inline": false },
        { "name": "💳 Balance :", "value": "]]..totalbal..[[", "inline": false },
        { "name": "🕒 DateTime :", "value": "]]..jam..[[ (]]..tanggal..[[)", "inline": false }
      ],
      "thumbnail": {
        "url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png"
      },
      "image": {
        "url": "https://media.tenor.com/XKYdazTApQcAAAAi/discord-loading.gif"
      },
      "footer": {
        "text": "Kazelua • Powered by TegarP",
        "icon_url": "https://cdn.discordapp.com/attachments/1384472540876902480/1384497376995053649/Nazuna_Hiwatashi.png"
      }
    }
  ]
}
]]

MakeRequest(myLink, "POST", {["Content-Type"] = "application/json"}, requestBody)
end
