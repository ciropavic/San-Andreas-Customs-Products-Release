Citizen.CreateThread(function()
	repeat
		Wait(0)
	until permissions
	permissions["griefing"] = false
	permissions["griefing.menu"] = false
	permissions["griefing.truck"] = false
	permissions["griefing.clowns"] = false
	permissions["griefing.flashbang"] = false
	permissions["griefing.drug"] = false
	permissions["griefing.fakenotif"] = false

	permissions["griefing.veh"] = false

	permissions["griefing.lag"] = false
	permissions["griefing.crash"] = false
end)

fakeNotifications = { -- stuff thats playable in the fake sound option, uses special furfag.de page for youtube player embed and volume
	{
		name = "Discord Call",
		youtube_id = "n_WorPInSPQ",
		volume = 25 -- 75% is the maximum.
	},
	{
		name = "Discord Message",
		youtube_id = "rIPq9Fl5r44",
		volume = 20
	},
	{
		name = "Skype Call",
		youtube_id = "lVQI7CLus04",
		volume = 25
	},
	{
		name = "TS3 Hey Wake Up",
		youtube_id = "s-KcXdYysTQ",
		volume = 15
	},
	{
		name = "Win10 Error",
		youtube_id = "QkcEqzO_pus",
		volume = 25
	},
	{
		name = "Win10 USB",
		youtube_id = "OOJi5zm9GYQ",
		volume = 60
	},
	{
		name = "Door Knocking",
		youtube_id = "4Potjy81R3c",
		volume = 60
	}
}
