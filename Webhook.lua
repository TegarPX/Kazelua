local myLink = "https://discord.com/api/v10/webhooks/1409403145674686504/vwuQgoteymLEfrXTEO7UDQBmk0jUCUUAFH35TYyaUkFHRDKuLO-1lVagSwiLV62iNT6W"
local whlink = ""




if proxy then
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
        { "name": "🌍 World :", "value": "**DEBUG_WORLD**", "inline": false },
        { "name": "👤 Nama :", "value": "**DEBUG_NAME**", "inline": false },
        { "name": "➡️ UserID :", "value": "**DEBUG_USERID**", "inline": false },
        { "name": "💳 Balance :", "value": "**DEBUG_BALANCE**", "inline": false }
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
