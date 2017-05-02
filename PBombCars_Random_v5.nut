//------------------------------------------------------------------------------------------------------------------
// ___  ___              _     _        ___                
//| _ \| _ ) ___  _ __  | |__ ( )___   / __| __ _  _ _  ___
//|  _/| _ \/ _ \| '  \ | '_ \|/(_-<  | (__ / _` || '_|(_-<
//|_|  |___/\___/|_|_|_||_.__/  /__/   \___|\__,_||_|  /__/
//
//-------------------------------------------------------------------------------------------------------------------
//--------
//Licence
//--------
//Copyright (C) 2011  PBomb
//
//This program is free software: you can redistribute it and/or modify
//it under the terms of the GNU General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//any later version.
//
//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.
//
//You should have received a copy of the GNU General Public License
//along with this program.  If not, see <http://www.gnu.org/licenses/>.
//--------
//--------
//NOTE:
//--------
// If you use any of the coding in this script for your server, please add the Author of the code
// in the credits of your server. This goes for all scripts. its respect to the author, as they dedicate
// their personal time to make these codes.
//--------
//--------
//CREDITS
//--------
// IV:MP Team = For Making IV:MP
// Pulse, Jones, Andre997, Realstar and Ruscris2 = /v command and cars array
// SE7EN, whooper/helipwns = Support
// PBomb = Author of Script
//--------

local vehicleNames = [
"Admiral", "Airtug" , "Ambulance", "Banshee", "Benson", "Biff", "BlistaCompact", "Bobcat", "Boxville", "Buccaneer",
"Burrito", "Burrito", "Bus", "Cabby", "Cavalcade", "Chavos", "Cognoscenti", "Comet", "Coquette",
"DF8", "Dilettante", "Dukes", "E109", "Emperor", "Emperor", "Esperanto", "Faction", "FBI", "Feltzer",
"Feroci", "Feroci", "Firetruck", "Flatbed", "Fortune", "Forklift", "Futo", "FXT", "Habanero", "Hakumai",
"Huntley", "Infernus", "Ingot", "Intruder", "Landstalker", "Lokus", "Manana", "Marbella", "Merit", "Minivan",
"Moonbeam", "MrTasty", "Mule", "Noose", "Nstockade", "Oracle", "Packer", "Patriot", "Perennial", "Perennial",
"Peyote", "Phantom", "Pinnacle", "PMP600", "Police", "Police2", "Ppatriot", "Pony", "Premier", "Pres", "Primo",
"Pstockade", "Rancher", "Rebla", "Ripley", "Romero", "Rom", "Ruiner", "Sabre", "Sabre", "SabreGT", "Schafter",
"Sentinel", "Solair", "Speedo", "Stalion", "Steed", "Stockade", "Stratum", "Stretch", "Sultan", "SultanRS",
"Super GT", "Taxi", "Taxi2", "Trash", "Turismo", "Uranus", "Vigero", "Vigero2", "Vincent", "Virgo", "Voodoo",
"Washington", "Willard", "Yankee", "Bobber", "Faggio", "Hellfury", "NRG900", "PCJ600", "Sanchez", "Zombieb",
"Annihilator",  "Pmaverick", "Maverick","Tourmav", "Dinghy", "Jetmax", "Marquis", "Predator", "Reefer", "Squalo",
"Tuga", "Tropic", "Cablecar", "Subway_HI", "Subway_LOW" ];

//dofile("scripts/ADMIN_SCRIPT.nut"); //(Optional)
local cars = array(getPlayerSlots(), -1);
const MAX_VEHICLES = 65534;
const MAX_PLAYERS = 32;

function onScriptInit()
{	
	log("-----------------------------");
	log("|PBombs Cars Loaded By PBomb |");
	log("-----------------------------");
    return 1;
}
addEvent("scriptInit", onScriptInit);

function changeVehicleModel(playerid,modelid,vCol=null)
{
	if(modelid < 0 || modelid == 41 || modelid == 107 || modelid == 111 || modelid > 123) return false;	
	if(isPlayerInAnyVehicle(playerid))
	{
		if(vCol == null) { local vCol = getVehicleColor(vehicleid); }
		local vehicleid = getPlayerVehicleId(playerid);
		local vCoord = getVehicleCoordinates (vehicleid)	
		local vSpeed = getVehicleVelocity(vehicleid);
		local vRot = getVehicleRotation(vehicleid);
		if(cars[playerid] != -1)
		{
			deleteVehicle(cars[playerid]);
			cars[playerid] = -1;
		}
		else
		{
			deleteVehicle(vehicleid);
		}
		cars[playerid] = createVehicle(modelid, vCoord[0], vCoord[1], vCoord[2], vRot[2], vCol , vCol , vCol , vCol);
		setVehicleVelocity(cars[playerid], vSpeed[0], vSpeed[1], vSpeed[2]);
		return true;
		
	}
	return false;
}

function getVehicleModelFromString(string)
{
	if(isInteger(string))
	{	
		local value = string.tointeger();
		if(value >= 0 && value < 126)
		{
			return value;
		}
		else
		{
			return null;
		}
	}
	else
	{
		foreach(i,s in vehicleNames)
		{
			local pos = s.tolower().find(string.tolower());
			if(pos != null)
			{
				return i;
			}
		}
		return null;
	}
}

function isInteger(value)
{
	try
	{
		value.tointeger();
		return true;
	}
	catch(e) 
	{ 
		return false; 
	}
}

function deleteAllVehicles()
{
	for(local i=0; i<MAX_VEHICLES; ++i)
	{
			deleteVehicle(i);
	}
	cars.clear();
	return true;
}

function random(min,max)
{
	return min+((max-min+1)*rand()/32767).tointeger();
}

function getSpeed(vehicleid)
{
    local velo = getVehicleVelocity(vehicleid);
    return sqrt(pow(velo[0], 2) + pow(velo[1], 2) + pow(velo[2], 2))*5;
}

function vStats(playerid)
{
	if(isPlayerInAnyVehicle(playerid))
	{
		local vehicleid = getPlayerVehicleId(playerid);
		local modelid = getVehicleModel(vehicleid);
		local vName = getVehicleName(modelid);
		local vhealth = getVehicleHealth(vehicleid)/10;
		local speed = getSpeed(vehicleid).tointeger();
		if(speed > 194)
		{
			displayPlayerInfoText(playerid, "~g~Vehicle Name ~w~" +vName+ " ~g~ID ~w~"+modelid+"~n~ ~g~Speed ~r~"+speed+" KM/H ~n~~g~Health ~w~"+vhealth, 1000);
		}
		else
		{
			displayPlayerInfoText(playerid, "~g~Vehicle Name ~w~" +vName+ " ~g~ID ~w~"+modelid+"~n~ ~g~Speed ~w~"+speed+" KM/H ~n~~g~Health ~w~"+vhealth, 1000);
		}
	}
}

function onPlayerChangeState( playerid, oldstate, newstate )
{
	if(newstate == 6) //The player is now in a vehicle
	{
		local vehicleid = getPlayerVehicleId(playerid);
		return setVehicleEngineState(vehicleid, true);
		
	}
}
addEvent("playerChangeState", onPlayerChangeState);

function onPlayerJoin ( playerid )
{
    local vStatsTimer = timer(vStats, 1000, -1, playerid);
    return 1;
}
addEvent("playerJoin", onPlayerJoin);

function onScriptExit()
{
	log("PBomb's Cars Unloading...");
	for(local i = 0; i < cars.len(); i++)
	{
		if(cars[i] != -1)
		{
			deleteVehicle(cars[i]);
		}
	}
	log("PBomb's Cars Unloading...DONE!");
}
addEvent("scriptExit", onScriptExit);

function onPlayerDisconnect(playerid, reason)
{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;
	}
}
addEvent("playerDisconnect", onPlayerDisconnect);

function onPlayerCommand(playerid, command)
{
	local cmd = split(command, " "); 
	
	for(local i = 0; i < vehicleNames.len(); i++)
	{
		try
		{
			if (cmd[0].tolower() == "/"+vehicleNames[i].tolower() || cmd[0].tolower() == "/"+vehicleNames[i].tolower().slice(0,3) || cmd[0].tolower() == "/"+vehicleNames[i].tolower().slice(0,4)) 
			{
				if(cars[playerid] != -1)
				{
					deleteVehicle(cars[playerid]);
					cars[playerid] = -1;
				}
				local rcolour = random(0,133);
				local pRot = getPlayerHeading(playerid);
				local position = getPlayerCoordinates(playerid);
				local newVehModelid = getVehicleModelFromString(vehicleNames[i]).tointeger();
				if (newVehModelid == 41 || newVehModelid == 107 || newVehModelid == 111 || newVehModelid > 123)
				{
					sendPlayerMessage(playerid, "ERROR: Invalid vehicle requested.",0xFF0000AA);
				}
				else
				{
					cars[playerid] = createVehicle(newVehModelid, position[0] + 2, position[1] + 2, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
					warpPlayerIntoVehicle(playerid, cars[playerid]);
					setVehicleEngineState(cars[playerid], true);
					sendPlayerMessage(playerid, "You Have a "+getVehicleName(newVehModelid)+" (ID: "+newVehModelid+")",0xFFFFFFAA);
				}
				return 1;
			}
		}
		catch(e)
		{
			continue;
		}
	}

//---------------------------------------------------------------------------------------	
//Vehicle Spawning Commands
//---------------------------------------------------------------------------------------	
	
	if(cmd[0] == "/heli") 
	{
		if(cars[playerid] != -1)
		{
			deleteVehicle(cars[playerid]);
			cars[playerid] = -1;
		}
		local rcolour = random(0,133);
		local pRot = getPlayerHeading(playerid);
		local position = getPlayerCoordinates(playerid);
		cars[playerid] = createVehicle(112, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
		warpPlayerIntoVehicle(playerid, cars[playerid]);
		setVehicleEngineState(cars[playerid], true);
		sendPlayerMessage(playerid, "You Have a Annihilator (ID: 112)",0xFFFFFFAA);
		return 1; 	
	}
	
	if(cmd[0] == "/heli2") 
	{ 
		if(cars[playerid] != -1)
		{
			deleteVehicle(cars[playerid]);
			cars[playerid] = -1;
		}
		local rcolour = random(0,133);
		local pRot = getPlayerHeading(playerid);
		local position = getPlayerCoordinates(playerid);
		cars[playerid] = createVehicle(113, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
		warpPlayerIntoVehicle(playerid, cars[playerid]);
		setVehicleEngineState(cars[playerid], true);
		sendPlayerMessage(playerid, "You Have a Maverick (ID: 113)",0xFFFFFFAA);
		return 1; 	
	}
	
	if(cmd[0] == "/heli3" || cmd[0] == "/policemaverick")
	{
		if(cars[playerid] != -1)
		{
			deleteVehicle(cars[playerid]);
			cars[playerid] = -1;
		}
		local rcolour = random(0,133);
		local pRot = getPlayerHeading(playerid);
		local position = getPlayerCoordinates(playerid);
		cars[playerid] = createVehicle(114, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
		warpPlayerIntoVehicle(playerid, cars[playerid]);
		setVehicleEngineState(cars[playerid], true);
		sendPlayerMessage(playerid, "You Have a Police Maverick (ID: 114)",0xFFFFFFAA);
		return 1; 	
	}
	
	if(cmd[0] == "/heli4") 
	{
		if(cars[playerid] != -1)
		{
			deleteVehicle(cars[playerid]);
			cars[playerid] = -1;
		}
		local rcolour = random(0,133);
		local pRot = getPlayerHeading(playerid);
		local position = getPlayerCoordinates(playerid);
		cars[playerid] = createVehicle(115, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
		warpPlayerIntoVehicle(playerid, cars[playerid]);
		setVehicleEngineState(cars[playerid], true);
		sendPlayerMessage(playerid, "You Have a HeliTours Maverick (ID: 115)",0xFFFFFFAA);
		return 1; 	
	}	
	
	if(cmd[0] == "/boat") //Dingy
	{
		if(cars[playerid] != -1)
		{
			deleteVehicle(cars[playerid]);
			cars[playerid] = -1;	
		}
		local rcolour = random(0,133);
		local pRot = getPlayerHeading(playerid);
		local position = getPlayerCoordinates(playerid);
		cars[playerid] = createVehicle(116, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
		warpPlayerIntoVehicle(playerid, cars[playerid]);
		setVehicleEngineState(cars[playerid], true);
		sendPlayerMessage(playerid, "You Have a Dingy (ID: 116)!", 0xFFFFFFAA);
		return 1; 	
	}
	
	if(cmd[0] == "/pcar")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	local rcolour = random(0,133);
	local pRot = getPlayerHeading(playerid);
	local position = getPlayerCoordinates(playerid);	
	cars[playerid] = createVehicle(52, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	setVehicleEngineState(cars[playerid], true);
	sendPlayerMessage(playerid, "You Have a NOOSE Police Cruiser (ID: 52)", 0xFFFFFFAA);
	return 1; 	
	}	
	
	if(cmd[0] == "/noose2" || cmd[0] == "/pcar2")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	local rcolour = random(0,133);
	local pRot = getPlayerHeading(playerid);
	local position = getPlayerCoordinates(playerid);
	cars[playerid] = createVehicle(65, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	setVehicleEngineState(cars[playerid], true);
	sendPlayerMessage(playerid, "You Have a NOOSE Patriot (ID: 65)", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/police3" || cmd[0] == "/pcar3")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	local rcolour = random(0,133);
	local pRot = getPlayerHeading(playerid);
	local position = getPlayerCoordinates(playerid);
	cars[playerid] = createVehicle(63, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	setVehicleEngineState(cars[playerid], true);
	sendPlayerMessage(playerid, "You Have a Police Cruiser (ID: 63)", 0xFFFFFFAA);
	return 1; 	
	}	

	if(cmd[0] == "/police4" || cmd[0] == "/pcar4")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	local rcolour = random(0,133);
	local pRot = getPlayerHeading(playerid);
	local position = getPlayerCoordinates(playerid);
	cars[playerid] = createVehicle(64, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	setVehicleEngineState(cars[playerid], true);
	sendPlayerMessage(playerid, "You Have a Police Cruiser (Style 2) (ID: 64) ", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/police5" || cmd[0] == "/pcar5" || cmd[0] == "/stockade")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	local rcolour = random(0,133);
	local pRot = getPlayerHeading(playerid);
	local position = getPlayerCoordinates(playerid);
	cars[playerid] = createVehicle(70, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	setVehicleEngineState(cars[playerid], true);
	sendPlayerMessage(playerid, "You Have a Police Stockade (ID: 70)", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/police6" || cmd[0] == "/pcar6" || cmd[0] == "/nstockade")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	local rcolour = random(0,133);
	local pRot = getPlayerHeading(playerid);
	local position = getPlayerCoordinates(playerid);
	cars[playerid] = createVehicle(53, position[0] + 2, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	setVehicleEngineState(cars[playerid], true);
	sendPlayerMessage(playerid, "You Have a NOOSE Police Stockade (ID: 53)", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Other Vehicle Commands
//---------------------------------------------------------------------------------------		
	
	if(cmd[0] == "/car")
	{		
		if(cars[playerid] != -1)
		{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
		}
		local randomModelID = 0
		while (true) 
		{	
			local randomModelID = random(1, 123);
			if(randomModelID == 41 || randomModelID == 107 || randomModelID == 111 || randomModelID == 123) 
			{ 
				continue; 
			}
			else
			{
				local rcolour = random(0,133);
				local pRot = getPlayerHeading(playerid);
				local position = getPlayerCoordinates(playerid);
				cars[playerid] = createVehicle(randomModelID, position[0] + 2, position[1], position[2] + 1, 0.0, 0.0, pRot.tofloat(), rcolour, rcolour, rcolour, rcolour);
				warpPlayerIntoVehicle(playerid, cars[playerid]);
				setVehicleEngineState(cars[playerid], true);
				sendPlayerMessage(playerid, "You have a " + vehicleNames[randomModelID] + "(ID:" + randomModelID + ")!",0xFFFFFFAA);
				break;
			}
		}	
		return 1; 	
	}
	
	if(cmd[0] == "/deleteallvehicles")
	{
//		if(Admin[playerid] >= 2) 
//		{
			deleteAllVehicles();
			sendMessageToAll(" " + getPlayerName(playerid) + " (" + playerid + ") has deleted all Cars.",0x20B2AAAA);
//		}
//		else
//		{
//			sendPlayerMessage(playerid, "ERROR: Your are not a Admin!", 0xCC0000AA); 
//		}
		return 1; 	
	}
	
	if(cmd[0] == "/gasv" || cmd[0] == "/giveallsamevehicle")
	{
//		if(Admin[playerid] >= 2) 
//		{
			if(cmd.len == 2)
			{
				foreach(i,playername in getPlayers())
				{
					changeVehicleModel(i,cmd[1].tointeger(), null);
				}
				sendMessageToAll(getPlayerName(playerid) + " (ID: " + playerid + ") has change all cars to look the same.",0x00FF00FF);
			}
			else if(cmd.len == 3)
			{
				foreach(i,playername in getPlayers())
				{
					changeVehicleModel(i,cmd[1].tointeger(), cmd[2].tointeger());
				}
				sendMessageToAll(getPlayerName(playerid) + " (ID: " + playerid + ") has change all cars to look the same.",0x00FF00FF);
			}
			else
			{
				sendPlayerMessage(playerid, "USAGE: '/gasv' or '/giveallsamevehicle [modelid] [Colour]", 0xCC0000AA); 
				sendPlayerMessage(playerid, "       The colour varible is optional.", 0xCC0000AA); 
			}
//		}
//		else
//		{
//			sendPlayerMessage(playerid, "ERROR: Your are not a Admin.", 0xCC0000AA); 
//		}	
		return 1; 	
	}
	
	if(cmd[0] == "/180")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			local vRot = getVehicleRotation(vehicleid);
			if (vRot[2].tofloat() == 0.0)
			{
				setVehicleRotation(vehicleid, vRot[0].tofloat(),vRot[1].tofloat(), 180.0);
			}	
			else if(vRot[2].tofloat() < 180.0) 
			{
				setVehicleRotation(vehicleid, vRot[0].tofloat(), vRot[1].tofloat(),vRot[2].tofloat() + 180.0);
			}
			else if(vRot[2].tofloat() == 180.0)
			{
				setVehicleRotation(vehicleid, vRot[0].tofloat(),vRot[1].tofloat(), 0.0);
			}			
			else if(vRot[2].tofloat() > 180.0)
			{
				setVehicleRotation(vehicleid, vRot[0].tofloat(),vRot[1].tofloat(),vRot[2].tofloat() - 180.0);
			}
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}
	}
	
	if(cmd[0] == "/90")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			local vRot = getVehicleRotation(vehicleid);
			if(vRot[2].tofloat() == 0.0)
			{
				setVehicleRotation(vehicleid, vRot[0].tofloat(),vRot[1].tofloat(), 90.0);
			}	
			else if(vRot[2].tofloat() > 0.0 && vRot[2].tofloat() < 270.0) 
			{
				setVehicleRotation(vehicleid, vRot[0].tofloat(), vRot[1].tofloat(),vRot[2].tofloat() + 90.0);
			}
			else if(vRot[2].tofloat() == 270.0)
			{
				setVehicleRotation(vehicleid, vRot[0].tofloat(),vRot[1].tofloat(), 0.0);
			}			
			else if(vRot[2].tofloat() > 270.0)
			{
				setVehicleRotation(vehicleid, vRot[0].tofloat(),vRot[1].tofloat(), 360.0 - vRot[2].tofloat());
			}

		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}	
	}
		

	if(cmd[0] == "/fix" || cmd[0] == "/repair")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			setVehicleHealth(vehicleid, 1000);
			repairVehicleWindows(vehicleid);
			repairVehicleWheels(vehicleid);
			displayPlayerText(playerid, 0.5, 0.5, "~g~Vehicle Fixed!", 1500);
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}
	}		

	if(cmd[0] == "/flip" || cmd[0] == "/f")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			local rotation = getVehicleRotation(vehicleid);
			setVehicleRotation(vehicleid, 0.0,0.0,rotation[2].tofloat());
			displayPlayerText(playerid, 0.5, 0.5, "~g~Vehicle Fliped!", 1500);
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}	
	}	
	
	if(cmd[0] == "/cleancar")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			setVehicleDirtLevel(vehicleid, 0.0);
			displayPlayerText(playerid, 0.5, 0.5, "~g~Vehicle Cleaned!", 1500);
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}	
	}	
	
	if(cmd[0] == "/dirtycar")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			setVehicleDirtLevel(vehicleid, 15.0);
			displayPlayerText(playerid, 0.5, 0.5, "~g~Vehicle Dirtified!", 1500);
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}
	}
	
	if(cmd[0] == "/lockcar")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			removePlayerFromVehicle(playerid, true);
			setVehicleLocked(vehicleid, 1);
			setVehicleEngineState(vehicleid, false);
			sendPlayerMessage(playerid, "MSG: Your vehicle's engine is now off and the vehicle is now locked.", 0xFFFF00AA);
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You need to be in a vehicle to lock it.",0xCC0000AA); 
		}		
	}
	
	if(cmd[0] == "/unlockcar")
	{
		local vehicleid = getPlayerVehicleId(playerid);
		setVehicleLocked(cars[playerid], 0);
		sendPlayerMessage(playerid,0xFFFF00FF, "MSG: Your vehicle's engine is on and the vehicle is now unlocked.");
		return 1; 	
	}	
	
//---------------------------------------------------------------------------------------	
// Standard Vechicle Spawning
//---------------------------------------------------------------------------------------
	if(cmd[0] == "/v")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
		if(cmd.len() == 2)
	    {	
			if(getVehicleModelFromString(cmd[1]))
			{
				local paint1 = random(0,136);
				local paint2 = random(0,136);
				local pRot = getPlayerHeading(playerid);
				local position = getPlayerCoordinates(playerid);
				if(getVehicleModelFromString(cmd[1]) <  0 || getVehicleModelFromString(cmd[1]) == 41 || getVehicleModelFromString(cmd[1]) == 107 || getVehicleModelFromString(cmd[1]) == 111 || getVehicleModelFromString(cmd[1]) > 123) return sendPlayerMessage(playerid, 0xCC0000AA, "ERROR: Invalid Model ID!");
				{
					cars[playerid] = createVehicle(getVehicleModelFromString(cmd[1]), position[0] + 1, position[1] + 1, position[2] + 1, 0.0, 0.0, pRot.tofloat(), paint1, paint2, paint1, paint2);
					warpPlayerIntoVehicle(playerid, cars[playerid]);
					setVehicleEngineState(cars[playerid], true);
					sendPlayerMessage(playerid, 0x10F441AA, "You have created a "+ vehicleNames[getVehicleModelFromString(cmd[1])] + "(ID: " + getVehicleModelFromString(cmd[1]) + ")!");
				}
			}
			else
			{
				sendPlayerMessage(playerid, 0xCC0000AA, "ERROR: That vehicle does not extist or is misspelled");
			}
		}
		else
		{
			sendPlayerMessage(playerid, 0xCC0000AA, "ERROR: /v [carmodelid/carname]");		
		}
	}
	
//---------------------------------------------------------------------------------------	
//Paint Vehicle Command
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/paint" || cmd[0] == "/pa") 
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local commandError = false;
			local vehicleID = getPlayerVehicleId(playerid);
			if(cmd.len() == 2) 
			{
				if(cmd[1].tointeger() > -1 && cmd[1].tointeger() <= 136) 
				{
					setVehicleColor(vehicleID, cmd[1].tointeger() , cmd[1].tointeger() , cmd[1].tointeger(), cmd[1].tointeger())
					displayPlayerText(playerid, 0.5, 0.5, "~g~Vehicle Colour Changed!", 1500);
				}
				else { commandError = true; }
				
			}
			else if(cmd.len() == 5) 
			{
				if((cmd[1].tointeger() > -1 && cmd[1].tointeger() <= 136) && (cmd[2].tointeger() > -1 && cmd[2].tointeger() <= 136) &&
				(cmd[3].tointeger() > -1 && cmd[3].tointeger() <= 136) && (cmd[4].tointeger() > -1 && cmd[4].tointeger() <= 136))
				{
					setVehicleColor(vehicleID, cmd[1].tointeger() , cmd[2].tointeger() , cmd[3].tointeger(), cmd[4].tointeger())
					displayPlayerText(playerid, 0.5, 0.5, "~g~Vehicle Colour Changed!", 1500);
				}	
				else { commandError = true; }
			}
			else { commandError = true; }
			
			if(commandError == true)
			{
				sendPlayerMessage(playerid, "USAGE: /pa(int) [Colour 1] [[Colour 2] [Colour 3] [Colour 4]]", 0xCC0000AA);	
				sendPlayerMessage(playerid, "NOTE: The Colour spectrum is between 0 to 136, Only the Colour 1 parameter is needed to paint your car, all other parameters are optional.", 0xCC0000AA);	
			}
			return 1;
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.", 0xCC0000AA);
		}
	}
//---------------------------------------------------------------------------------------	
//Help Section
//---------------------------------------------------------------------------------------	
	if(cmd[0].tolower() == "/vhelp" || cmd[0].tolower() == "/vehiclehelp") 
	{
		sendPlayerMessage(playerid, "Vehicle Help",0x33FF33AA);
		sendPlayerMessage(playerid, "To Spawn a random vehicle  you can type /car OR you can create a specific vehicle model,",0xFF9900AA);
		sendPlayerMessage(playerid, "by typing /(vehicleName) or /(first three letters of vehicle Name). For example, to spawn, an infernus, the fastest car ingame,",0xFF9900AA);
		sendPlayerMessage(playerid, "the fastest car ingame, we can type either \"/infernus\" or \"/inf\".",0xFF9900AA);
		sendPlayerMessage(playerid, "Vehicle Commands",0x33FF33AA);
		sendPlayerMessage(playerid, "/dcar =Delete All Cars, /gasv=Gives Alll Players the same vehicle, /f(lip) = Flip Vehicle, /fix = Fix Vehicle",0xFF9900AA);
		sendPlayerMessage(playerid, "/car =Random car, /v =Spawn Vehicle, /pa(int) =Paint Car, /90 = rotates vehicle 90degrees Anti-clockwise, /180 = rotates vehicle 180degrees.", 0xFF9900AA);
	}
}
addEvent("playerCommand", onPlayerCommand);