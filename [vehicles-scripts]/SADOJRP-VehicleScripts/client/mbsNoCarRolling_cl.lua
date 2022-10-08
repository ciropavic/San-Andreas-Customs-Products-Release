--*****************************************--
--  No Car Rolling Mod V1.0: Made By Slade --
--*****************************************--


-- Copyright (c) 2016, Sladernimo, Member Of Vega Game Projects @ www.vega-gp.de


--***************************************************************************************************************
--=============
-- INFORMATION:
--=============
--
--
-----------
-- VERSION:
-----------
-- This is version 1.0 initial release.
--
--
-----------------
-- COMPATIBILITY:
-----------------
-- All of my mods are 100% compatible to each other.
-- In general the mods should be compatible to almost every other mod.
-- Obviously, if you are using a mod that injects or alters the game in the same way like one of my mods does, weird stuff can happen.
--
--
----------------------
-- SETUP/REQUIREMENTS:
----------------------
-- 1. Install ScriptHookV if not already done.
-- 2. Install LUA Plugin for ScriptHookV if not already done.
-- 3. Copy mbsNoCarRolling.lua into your scripts/addins folder inside of your Grand Theft Auto V folder.
-- 4. Play the game in singleplayer.
-- 5. Enjoy the mod & have fun!
--
--
---------------
-- DESCRIPTION:
---------------
-- Stops the player to be able to roll a car back on its wheels when stuck on roof.
--
--
---------------
-- AUTHOR INFO:
---------------
-- MBS stands for "Made By Slade". I am Slade, the author of this mod.
-- My primary alias is "Sladernimo". I'm a part of the Vega Game Projects - community.
-- Vega-GP is a gaming and modding community. You can visit us at "www.vega-gp.de".
-- I have made my GTA5 mods while playing the game.
-- They are all made to improve the gameplay expirience by
-- changing, removing and adding game features.
--
--
-----------------------------
-- VEGA-GAME PROJECTS INFO:
-----------------------------
--Vega Game Projects is a community for individual gamers and modders.
--We customize our games and servers to refine the overall gaming expirience and play togehter.
--We usually hang out on our Teamspeak Server.
--
--If you are intreseted visit our website at www.vega-gp.de
--
--or contact us:
--- TS³: vega-gp.de
--- Mail: info@vega-gp.de
-- 
--
-------------------------------
-- LICENSE INFO (BSD LICENSE) :
-------------------------------
-- Copyright (c) 2016, Sladernimo, Member Of Vega Game Projects @ www.vega-gp.de
-- All rights reserved.
--
-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions are met:
-- 1. Redistributions of source code must retain the above copyright
--    notice, this list of conditions and the following disclaimer.
-- 2. Redistributions in binary form must reproduce the above copyright
--    notice, this list of conditions and the following disclaimer in the
--    documentation and/or other materials provided with the distribution.
-- 3. All advertising materials mentioning features or use of this software
--    must display the following acknowledgement:
--    This product includes software developed by the Vega-GP Community.
-- 4. Neither the name of the Vega-GP Community nor the
--    names of its contributors may be used to endorse or promote products
--    derived from this software without specific prior written permission.
-- 
-- THIS SOFTWARE IS PROVIDED BY Sladernimo ''AS IS'' AND ANY
-- EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-- WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-- DISCLAIMED. IN NO EVENT SHALL Sladernimo BE LIABLE FOR ANY
-- DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-- (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-- LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-- ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-- 
--
-----------------------
-- LICENSE EXPLANATION:
-----------------------
-- The license means especially the following:
-- You are free to use, distribute, copy, modify or use the code or parts of the code for your own work under the following permissions:
-- 1. You will always have to link the copyright (Copyright (c) 2016, Sladernimo, Member Of Vega Game Projects @ www.vega-gp.de) in a release of your own work or if you share it over a website for example.
-- 2. You will always have to keep this license (BSD License).
--
--
----------------
-- LEGAL NOTICE:
----------------
-- Grand Theft Auto / GTA 5 are registered trademarks of Rockstar Games. This modification is not affiliated with or endorsed by Rockstar Games.
-- © 2016. Rockstar Games and its subsidiaries. All other marks and trademarks are the property of their respective owners. All rights reserved.
--
--
--***************************************************************************************************************

local mbsNoCarRolling = {}


function mbsNoCarRolling.drawText()
    
end


function mbsNoCarRolling.init()
	
end


function mbsNoCarRolling.tick()
	local playerPedID = PLAYER.PLAYER_PED_ID()
	if ENTITY.DOES_ENTITY_EXIST(playerPedID) then
		if PED.IS_PED_IN_ANY_VEHICLE(playerPedID, false) then
			local playerVehicle = PED.GET_VEHICLE_PED_IS_IN(playerPedID, false)
			if not PED.IS_PED_IN_FLYING_VEHICLE(playerPedID) then
				playerVehicleHash = VEHICLE.GET_VEHICLE_LAYOUT_HASH(playerVehicle)
				if not PED.IS_PED_ON_ANY_BIKE(playerPedID) then
					local rollEntitiy = ENTITY.GET_ENTITY_ROLL(playerPedID)
					if rollEntitiy > 90.9 or rollEntitiy < (-90.9) then
						VEHICLE.SET_VEHICLE_OUT_OF_CONTROL(playerVehicle, false, false)
					end
				end
			end
		end
	end
end


function mbsNoCarRolling.unload()
end


return mbsNoCarRolling