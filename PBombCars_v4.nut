//-----------------------------------------------------------------------------------------------------------------
//
//     PPPPPPPPPPPPPPPPP   BBBBBBBBBBBBBBBBB        OOOOOOOOO     MMMMMMMM               MMMMMMMMBBBBBBBBBBBBBBBBB   
//     P::::::::::::::::P  B::::::::::::::::B     OO:::::::::OO   M:::::::M             M:::::::MB::::::::::::::::B  
//     P::::::PPPPPP:::::P B::::::BBBBBB:::::B  OO:::::::::::::OO M::::::::M           M::::::::MB::::::BBBBBB:::::B 
//     P:::::P     P:::::PBB:::::B     B:::::BO:::::::OOO:::::::OM:::::::::M         M:::::::::MBB:::::B     B:::::B
//     P::::P     P:::::P  B::::B     B:::::BO::::::O   O::::::OM::::::::::M       M::::::::::M  B::::B     B:::::B
//     P::::P     P:::::P  B::::B     B:::::BO:::::O     O:::::OM:::::::::::M     M:::::::::::M  B::::B     B:::::B
//     P::::PPPPPP:::::P   B::::BBBBBB:::::B O:::::O     O:::::OM:::::::M::::M   M::::M:::::::M  B::::BBBBBB:::::B 
//     P:::::::::::::PP    B:::::::::::::BB  O:::::O     O:::::OM::::::M M::::M M::::M M::::::M  B:::::::::::::BB  
//     P::::PPPPPPPPP      B::::BBBBBB:::::B O:::::O     O:::::OM::::::M  M::::M::::M  M::::::M  B::::BBBBBB:::::B 
//     P::::P              B::::B     B:::::BO:::::O     O:::::OM::::::M   M:::::::M   M::::::M  B::::B     B:::::B
//     P::::P              B::::B     B:::::BO:::::O     O:::::OM::::::M    M:::::M    M::::::M  B::::B     B:::::B
//     P::::P              B::::B     B:::::BO::::::O   O::::::OM::::::M     MMMMM     M::::::M  B::::B     B:::::B
//   PP::::::PP          BB:::::BBBBBB::::::BO:::::::OOO:::::::OM::::::M               M::::::M BB:::::BBBBBB::::::B
//   P::::::::P          B:::::::::::::::::B  OO:::::::::::::OO M::::::M               M::::::M B:::::::::::::::::B 
//   P::::::::P          B::::::::::::::::B     OO:::::::::OO   M::::::M               M::::::M B::::::::::::::::B  
//   PPPPPPPPPP          BBBBBBBBBBBBBBBBB        OOOOOOOOO     MMMMMMMM               MMMMMMMM BBBBBBBBBBBBBBBBB   

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
//This software is intended for general use. Only approved distrubtion by the owner can be allowed.
//Any non-approved distrubtion will have serious actions from the owner.
//Copyright(C) PBomb 2010. All Rights Reserved.
//--------
//--------
//NOTE:
//--------
// If you use any of the coding in this script for your server, please add the Author of the code
// in the credits of your server. This goes for all scripts. its respect to the author.
//--------
//=====================================================================================================
//EXTREME NOTE: Read all of this script (Skim Read) as there are littles notes everywhere
//=====================================================================================================
//--------
//CREDITS
//--------
// IV:MP Team = For Making IV:MP
// Pulse, Jones, Andre997, Realstar and Ruscris2 = /v command and cars array
// SE7EN, whooper/helipwns = Support
// PBomb = Author of Script
//--------

local vehicleNames = [
"Admiral", "Airtug" , "Ambulance", "Banshee", "Benson", "Biff", "Blista Compact", "Bobcat", "Boxville", "Buccaneer",
"Burrito", "Burrito", "Bus", "Cabby", "Cavalcade", "Chavos", "Cognoscenti", "Comet", "Coquette",
"DF8", "Dilettante", "Dukes", "E109", "Emperor", "Emperor", "Esperanto", "Faction", "FBI", "Feltzer",
"Feroci", "Feroci", "Firetruck", "Flatbed", "Fortune", "Forklift", "Futo", "FXT", "Habanero", "Hakumai",
"Huntley", "Infernus", "Ingot", "Intruder", "Landstalker", "Lokus", "Manana", "Marbella", "Merit", "Minivan",
"Moonbeam", "MrTasty", "Mule", "Noose", "Nstockade", "Oracle", "Packer", "Patriot", "Perennial", "Perennial",
"Peyote", "Phantom", "Pinnacle", "PMP600", "Police", "Police", "Polpatriot", "Pony", "Premier", "Pres", "Primo",
"Pstockade", "Rancher", "Rebla", "Ripley", "Romero", "Rom", "Ruiner", "Sabre", "Sabre", "Sabre GT", "Schafter",
"Sentinel", "Solair", "Speedo", "Stalion", "Steed", "Stockade", "Stratum", "Stretch", "Sultan", "Sultan RS",
"Super GT", "Taxi", "Taxi", "Trash", "Turismo", "Uranus", "Vigero", "Vigero", "Vincent", "Virgo", "Voodoo",
"Washington", "Willard", "Yankee", "Bobber", "Faggio", "Hellfury", "NRG900", "PCJ600", "Sanchez", "Zombieb",
"Annihilator",  "Polmav", "Maverick","Tourmav", "Dinghy", "Jetmax", "Marquis", "Predator", "Reefer", "Squalo",
"Tuga", "Tropic", "Cablecar", "Subway_HI", "Subway_LOW" ];

//dofile("scripts/ADMIN_SCRIPT.nut");	
//dofile("cripts/RACE_SCRIPT.nut");		  
local cars = array(getPlayerSlots(), -1);
const MAX_VEHICLES = 65534;
const MAX_PLAYERS = 32;

function onScriptInit()
{	
	log("-----------------------------");
	log("PBomb's Cars Loaded By PBomb ");
	log("-----------------------------");
	SpawnCars();
	return 1;
}
addEvent("scriptInit", onScriptInit);

function SpawnCars()
{
	createVehicle(40, -192.624000, 300.171000, 15.197400, 180.000, 131, 131, 131, 131); //Infurnus
	createVehicle(108, -192.853, 304.462, 15.278, 117.971, 129, 1, 1, 1); //Bike
	createVehicle(108, -193.062, 306.631, 15.3018, 117.971, 61, 61, 1, 1);//Bike
}

function changeVehicleModel(playerid,modelid,vehColour=null)
{
	if(modelid < 0 || modelid == 41 || modelid == 107 || modelid == 111 || modelid > 123) return 0;	
	if(isPlayerInAnyVehicle(playerid))
	{
		if(vehColour == null)
		{
			local vCol = getVehicleColor(vehicleid);
		}
		else
		{
			local vCol = vehColour;
		}
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
		return 1;
		
	}
	else
	{
		return 0;
	}
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

function isInteger(value)
{
	try
	{
		value.tointeger();
	}
	catch(e)
	{
		return false;
	}
	return true;
}

function deleteAllVehicles()
{
	for(local i=0; i<MAX_VEHICLES; i++)
	{
			deleteVehicle(i);
	}
	return SpawnCars();
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
		local vhealth = getVehicleHealth(vehicleid);
		local vehealth = getVehicleEngineHealth(vehicleid);
		local speed = getSpeed(vehicleid).tointeger();
		if(speed >= 200)
		{
			displayPlayerInfoText(playerid, "~g~Vehicle Name ~w~" +vName+ " ~g~ID ~w~"+modelid+"~n~ ~g~ Speed ~r~"+speed+" KM/H ~n~ ~g~ Engine Health ~w~"+vehealth+"~g~ Health ~w~"+vehealth+" ", 1000);
		}
		else if(speed <= 199)
		{
			displayPlayerInfoText(playerid, "~g~Vehicle Name ~w~" +vName+ " ~g~ID ~w~"+modelid+"~n~ ~g~ Speed ~w~"+speed+" KM/H ~n~ ~g~ Engine Health ~w~"+vehealth+"~g~ Health ~w~"+vehealth+" ", 1000);
		}
	}
}

function onPlayerConnect(playerid)
{
    setTimer(vStats, 1000, -1, playerid);
    return 1;
}
addEvent("playerConnect", onPlayerConnect);

function onScriptExit()
{
	log("-------------------------------");
	log("PBomb's Cars unloaded By PBomb");
	log("-------------------------------");
	for(local i = 0; i < cars.len(); i++)
	{
		if(cars[i] != -1)
		{
			deleteVehicle(cars[i]);
		}
	}
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
	local position = getPlayerCoordinates(playerid);
	local rcolour = random(0,133);
	local head = getPlayerHeading(playerid);

//---------------------------------------------------------------------------------------	
//Quick Commands (Fastest Car(Infurnus) and Fastest Bike(NRG-900)
//---------------------------------------------------------------------------------------		
	
	if(cmd[0] == "/car" || cmd[0] == "/infurnus" || cmd[0] == "/inf") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(40, position[0] + 1, position[1] + 1, position[2] + 1, 0, 131, 131, 131, 131);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have an Infurnus!",0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/nrg" || cmd[0] == "/bike" || cmd[0] == "/nrg900")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(108, position[0] + 2, position[1], position[2] + 1, 0, 125, 125, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a NRG-900!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//SUV's, 4x4, Minivans and Station Wagons
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/cav" || cmd[0] == "/cavalcade") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
			cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(14, position[0] + 2, position[1], position[2] + 1, 0, 28, 89, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Cavalcade!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/bob" || cmd[0] == "/bobcat") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
			cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(7, position[0] + 2, position[1], position[2] + 1, 0, 22, 113, 21, 20);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Bobcat!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/fxt") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
			cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(36, position[0] + 2, position[1], position[2] + 1, 0, 74, 89, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Cavalcade FXT!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/hunt" || cmd[0] == "/huntley") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(39, position[0] + 2, position[1], position[2] + 1, 0, 129, 127, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Huntly Sports!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/land" || cmd[0] == "/landstalker") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(43, position[0] + 2, position[1], position[2] + 1, 0, 126, 126, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Landstalker!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/pat" || cmd[0] == "/patriot") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(56, position[0] + 2, position[1], position[2] + 1, 0, 118, 127, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Patriot!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/reb" || cmd[0] == "/rebla") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(72, position[0] + 2, position[1], position[2] + 1, 0, 101, 111, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Rebla!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/hab" || cmd[0] == "/habanero") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(37, position[0] + 2, position[1], position[2] + 1, 0, 126, 127, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Habanero!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/mvan" || cmd[0] == "/minivan") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(48, position[0] + 2, position[1], position[2] + 1, 0, 91, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Minivan!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/moonb" || cmd[0] == "/moonbeam") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(49, position[0] + 2, position[1], position[2] + 1, 0, 77, 77, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Moonbeam!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/per" || cmd[0] == "/perennial") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(57, position[0] + 2, position[1], position[2] + 1, 0, 1, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Perennial!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/perc" || cmd[0] == "/perennialc") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(57, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Perennial!", 0xFFFFFFAA);
	return 1; 	
	}	

	if(cmd[0] == "/ran" || cmd[0] == "/rancher") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(71, position[0] + 2, position[1], position[2] + 1, 0, 1, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Rancher!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/rom" || cmd[0] == "/romero") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(74, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 0, 0);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Romero!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/sol" || cmd[0] == "/solair") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(82, position[0] + 2, position[1], position[2] + 1, 0, 106, 127, 106, 106);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Solair!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/stra" || cmd[0] == "/stratum") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(87, position[0] + 2, position[1], position[2] + 1, 0, 106, 127, 106, 106);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Stratum!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/E109" || cmd[0] == "/contender") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(22, position[0] + 2, position[1], position[2] + 1, 0, 106, 127, 106, 106);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a E109/Contender!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Bikes
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/fag" || cmd[0] == "/faggio") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(106, position[0] + 2, position[1], position[2] + 1, 0, 61, 61, 0, 0);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Faggio!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/pcj" || cmd[0] == "/bike2" || cmd[0] == "/pcj600") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(109, position[0] + 2, position[1], position[2] + 1, 0, 27, 127, 0, 0);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a PCJ-600!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/san" || cmd[0] == "/bike3" || cmd[0] == "/sanchez") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(110, position[0] + 2, position[1], position[2] + 1, 0, 56, 56, 0, 0);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Sanchez!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Helicopters
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/heli" || cmd[0] == "/anni" || cmd[0] == "/annihilator") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(112, position[0] + 2, position[1], position[2] + 1, 0, 1, 0, 0, 0);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Annihilator!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/heli2" || cmd[0] == "/mav" || cmd[0] == "/maverick") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(113, position[0] + 2, position[1], position[2] + 1, 0, 27, 127, 0, 0);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Maverick!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/heli3" || cmd[0] == "/pmav" || cmd[0] == "/policemaverick" || cmd[0] == "/pmaverick" || cmd[0] == "/policem") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(114, position[0] + 2, position[1], position[2] + 1, 0, 133, 133, 133, 133);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Police Maverick!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/heli4" || cmd[0] == "/hmav" || cmd[0] == "/helitourmaverick" || cmd[0] == "/hmaverick" || cmd[0] == "/helitourm") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(115, position[0] + 2, position[1], position[2] + 1, 0, 0, 133, 0, 0);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Helitours Maverick!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//HIDDEN CMDs
//
//         __________________________
//        /   | |______| |___     __/ 
//       /  , | |  /\  | | ^ |   |       ,--.  
//     ,' ,'| | |.'  `.| |/ \|   |      /    \  
//   ,' ,'__| | |______| |___|   |      \    /    
//  /         |          |   |   |     _ `--'      
//  [   ,--.  |          |,--|   |]   (_) 
//  |__/    \_|__________/    \__|= o 
//     \    /            \    /
//      `--'              `--'
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/tasty") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(50, position[0] + 2, position[1], position[2] + 1, 0, 1, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Mr. Tasty Ice-Cream Truck! (Hidden Command)", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Public Cars
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/bus" || cmd[0] == "/ps") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(12, position[0] + 2, position[1], position[2] + 1, 0, 83, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Bus!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/cabby" || cmd[0] == "/ps2") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(13, position[0] + 2, position[1], position[2] + 1, 0, 89, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Cabby!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/taxi" || cmd[0] == "/ps3") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(92, position[0] + 2, position[1], position[2] + 1, 0, 89, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Taxi!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/taxi2" || cmd[0] == "/ps4") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(93, position[0] + 2, position[1], position[2] + 1, 0, 89, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Taxi(Style 2)!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Sports Cars
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/banshee" || cmd[0] == "/shee") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(3, position[0] + 2, position[1], position[2] + 1, 0, 33, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Banshee!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/com" || cmd[0] == "/comet") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(17, position[0] + 2, position[1], position[2] + 1, 0, 89, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Comet!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/coq" || cmd[0] == "/coquette") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(18, position[0] + 2, position[1], position[2] + 1, 0, 8, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Coquette!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/sulrs" || cmd[0] == "/sultanrs") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(90, position[0] + 2, position[1], position[2] + 1, 0, 0, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Sultan RS!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/super" || cmd[0] == "/supergt" || cmd[0] == "/sgt") 
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(91, position[0] + 2, position[1], position[2] + 1, 0, 28, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Super GT!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/tur" || cmd[0] == "/turismo")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(95, position[0] + 2, position[1], position[2] + 1, 0, 129, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Turismo!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Boats
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/boat" || cmd[0] == "/dingy")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(116, position[0] + 2, position[1], position[2] + 1, 0, 7, 7, 7, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Dingy!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/jetm" || cmd[0] == "/jetmax")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(117, position[0] + 2, position[1], position[2] + 1, 0, 0, 133, 133, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Jetmax!", 0xFFFFFFAA);
	return 1; 	
	}
		
	if(cmd[0] == "/marq" || cmd[0] == "/marquis")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(118, position[0] + 2, position[1], position[2] + 1, 0, 133, 133, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Marquis!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/reef" || cmd[0] == "/reefer")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(120, position[0] + 2, position[1], position[2] + 1, 0, 113, 113, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Reefer!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/squ" || cmd[0] == "/squalo")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(121, position[0] + 2, position[1], position[2] + 1, 0, 81, 133, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Squalo!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/tugb" || cmd[0] == "/tugboat")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(122, position[0] + 2, position[1], position[2] + 1, 0, 7, 7, 7, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Tugboat!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/trop" || cmd[0] == "/tropic")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(123, position[0] + 2, position[1], position[2] + 1, 0, 82, 127, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Tropic!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/pred" || cmd[0] == "/predator")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(119, position[0] + 2, position[1], position[2] + 1, 0, 1, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Predator!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Emergency 
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/ambo" || cmd[0] == "/ambulance")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(2, position[0] + 2, position[1], position[2] + 1, 0, 133, 28, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Ambulance!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/fbi" || cmd[0] == "/fbibuffalo")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(27, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a FBI Buffalo!", 0xFFFFFFAA);
	return 1; 	
	}	

	if(cmd[0] == "/firet" || cmd[0] == "/firetruck")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(31, position[0] + 2, position[1], position[2] + 1, 0, 133, 28, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Firetruck!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/noose" || cmd[0] == "/police" || cmd[0] == "/pcar")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(52, position[0] + 2, position[1], position[2] + 1, 0, 133, 82, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a NOOSE Police Cruiser! ", 0xFFFFFFAA);
	return 1; 	
	}	
	
	if(cmd[0] == "/noose2" || cmd[0] == "/police2" || cmd[0] == "/pcar2")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(65, position[0] + 2, position[1], position[2] + 1, 0, 133, 82, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a NOOSE Patriot!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/police3" || cmd[0] == "/pcar3")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(63, position[0] + 2, position[1], position[2] + 1, 0, 133, 82, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Police Car! ", 0xFFFFFFAA);
	return 1; 	
	}	

	if(cmd[0] == "/police4" || cmd[0] == "/pcar4")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(64, position[0] + 2, position[1], position[2] + 1, 0, 133, 82, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Police Car (Style 2)! ", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/police5" || cmd[0] == "/pcar5" || cmd[0] == "/stockade")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(70, position[0] + 2, position[1], position[2] + 1, 0, 133, 82, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Police Stockade!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/police6" || cmd[0] == "/pcar6" || cmd[0] == "/nstockade")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(53, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 0, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a NOOSE Police Stockade!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Sedans
//---------------------------------------------------------------------------------------
	
	if(cmd[0] == "/adm" || cmd[0] == "/admiral")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(0, position[0] + 2, position[1], position[2] + 1, 0, 133, 82, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Admiral!", 0xFFFFFFAA);
	return 1; 	
	}	

	if(cmd[0] == "/chav" || cmd[0] == "/chavos")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(15, position[0] + 2, position[1], position[2] + 1, 0, 35, 89, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Chavos!", 0xFFFFFFAA);
	return 1; 	
	}	
	
	if(cmd[0] == "/cog" || cmd[0] == "/cognoscenti")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(16, position[0] + 2, position[1], position[2] + 1, 0, 0, 30, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Cognoscenti!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/df" || cmd[0] == "/df8-90")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(19, position[0] + 2, position[1], position[2] + 1, 0, 133, 113, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a DF8-90!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/dil" || cmd[0] == "/dilettante")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(20, position[0] + 2, position[1], position[2] + 1, 0, 61, 61, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Dilettante!", 0xFFFFFFAA);
	return 1; 	
	}
	
    if(cmd[0] == "/esp" || cmd[0] == "/esperanto")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(25, position[0] + 2, position[1], position[2] + 1, 0, 41, 41, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Dilettante!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/emp" || cmd[0] == "/emperor")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(23, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a emperor!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/remp" || cmd[0] == "/rustyemperor" || cmd[0] == "/remperor")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(24, position[0] + 2, position[1], position[2] + 1, 0, 133, 16, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Rusted Emperor! ", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/fero" || cmd[0] == "/feroci")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(29, position[0] + 2, position[1], position[2] + 1, 0, 83, 73, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Feroci! ", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/ferov" || cmd[0] == "/ferocivip")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(30, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Feroci VIP!", 0xFFFFFFAA);
	return 1; 	
	}	
	
	if(cmd[0] == "/Hak" || cmd[0] == "/hakumai")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(38, position[0] + 2, position[1], position[2] + 1, 0, 133, 110, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Hakumai!", 0xFFFFFFAA);
	return 1; 	
	}	
	
	if(cmd[0] == "/int" || cmd[0] == "/intruder")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(42, position[0] + 2, position[1], position[2] + 1, 0, 24, 24, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Intruder!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/lok" || cmd[0] == "/lokus")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(44, position[0] + 2, position[1], position[2] + 1, 0, 92, 92, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Lokus!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/mar" || cmd[0] == "/marbella")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(46, position[0] + 2, position[1], position[2] + 1, 0, 7, 7, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Marbella!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/mer" || cmd[0] == "/merit")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(47, position[0] + 2, position[1], position[2] + 1, 0, 47, 47, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Merit!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/orac" || cmd[0] == "/oracle")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(54, position[0] + 2, position[1], position[2] + 1, 0, 42, 127, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Oracle!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/pin" || cmd[0] == "/pinnacle")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(61, position[0] + 2, position[1], position[2] + 1, 0, 25, 25, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Pinnacle!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/pmp" || cmd[0] == "/pmp-600")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(62, position[0] + 2, position[1], position[2] + 1, 0, 1, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a PMP-600!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/prem" || cmd[0] == "/premier")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(67, position[0] + 2, position[1], position[2] + 1, 0, 60, 60, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Premier!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/pres" || cmd[0] == "/presidente")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(68, position[0] + 2, position[1], position[2] + 1, 0, 1, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Presidente!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/prim" || cmd[0] == "/primo")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(69, position[0] + 2, position[1], position[2] + 1, 0, 29, 89, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Primo!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/scha" || cmd[0] == "/schafter")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(80, position[0] + 2, position[1], position[2] + 1, 0, 98, 98, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Schafter!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/limo" || cmd[0] == "/stretch")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(88, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Stretch Limo!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/sult" || cmd[0] == "/Sultan")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(89, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Sultan!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/vin" || cmd[0] == "/vincent")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(99, position[0] + 2, position[1], position[2] + 1, 0, 133, 133, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Vincent!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/washi" || cmd[0] == "/washington")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(102, position[0] + 2, position[1], position[2] + 1, 0, 22, 22, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Washington!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/will" || cmd[0] == "/willard")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(103, position[0] + 2, position[1], position[2] + 1, 0, 53, 53, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Willard!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/blist" || cmd[0] == "/blistacompact" || cmd[0] == "/blista")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(6, position[0] + 2, position[1], position[2] + 1, 0, 133, 133, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Blista Compact!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/felt" || cmd[0] == "/feltzer")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(28, position[0] + 2, position[1], position[2] + 1, 0, 7, 74, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Feltzer!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/fort" || cmd[0] == "/fortune")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(33, position[0] + 2, position[1], position[2] + 1, 0, 93, 93, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Fortune!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/futo")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(35, position[0] + 2, position[1], position[2] + 1, 0, 58, 58, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Futo!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/sentinel" || cmd[0] == "/sen")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(81, position[0] + 2, position[1], position[2] + 1, 0, 0, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Sentinel!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/Uran" || cmd[0] == "/uranus")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(96, position[0] + 2, position[1], position[2] + 1, 0, 63, 70, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Uranus!", 0xFFFFFFAA);
	return 1; 	
	}
	
//---------------------------------------------------------------------------------------	
//Muscle Cars
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/dukes")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(21, position[0] + 2, position[1], position[2] + 1, 0, 109, 109, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Dukes!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/bucc" || cmd[0] == "/buccaneer")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(9, position[0] + 2, position[1], position[2] + 1, 0, 127, 127, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Buccaneer!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/fac" || cmd[0] == "/faction")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(26, position[0] + 2, position[1], position[2] + 1, 0, 53, 53, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Faction!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/mana" || cmd[0] == "/manana")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(45, position[0] + 2, position[1], position[2] + 1, 0, 73, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Manana!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/peyo" || cmd[0] == "/peyote")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(59, position[0] + 2, position[1], position[2] + 1, 0, 93, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Peyote!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/sab" || cmd[0] == "/sabre")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(77, position[0] + 2, position[1], position[2] + 1, 0, 65, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Sabre!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/rsab" || cmd[0] == "/rustedsabre" || cmd[0] == "/sab2")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(78, position[0] + 2, position[1], position[2] + 1, 0, 87, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Rusted Sabre!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/sabgt" || cmd[0] == "/sabregt" || cmd[0] == "/sab3")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(79, position[0] + 2, position[1], position[2] + 1, 0, 89, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Sabre GT!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/ruin" || cmd[0] == "/ruiner")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(97, position[0] + 2, position[1], position[2] + 1, 0, 24, 133, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have Ruiner!", 0xFFFFFFAA);
	return 1; 	
	}	
	
	if(cmd[0] == "/vig" || cmd[0] == "/vigero")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(97, position[0] + 2, position[1], position[2] + 1, 0, 35, 133, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have Vigero!", 0xFFFFFFAA);
	return 1; 	
	}	
	
	if(cmd[0] == "/rvig" || cmd[0] == "/rustedvigero")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(98, position[0] + 2, position[1], position[2] + 1, 0, 106, 133, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have Rusted Vigero!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/stall" || cmd[0] == "/stallion")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(84, position[0] + 2, position[1], position[2] + 1, 0, 103, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Stallion!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/vir" || cmd[0] == "/virgo")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(100, position[0] + 2, position[1], position[2] + 1, 0, 100, 1, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Virgo!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/vd" || cmd[0] == "/voodoo")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(101, position[0] + 2, position[1], position[2] + 1, 0, 133, 101, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Virgo!", 0xFFFFFFAA);
	return 1; 	
	}
//---------------------------------------------------------------------------------------	
//Industrial 
//---------------------------------------------------------------------------------------

	if(cmd[0] == "/air" || cmd[0] == "/airtug")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(1, position[0] + 2, position[1], position[2] + 1, 0, 133, 133, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Airtug!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/ben" || cmd[0] == "/benson")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(4, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Benson!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/biff")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(5, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Biff!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/box" || cmd[0] == "/boxville")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(8, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Boxville!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/fb" || cmd[0] == "/flatbed")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(32, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Flatbed!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/fl" || cmd[0] == "/fortlift")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(34, position[0] + 2, position[1], position[2] + 1, 0, 89, 0, 1, 1);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Forklift!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/mule")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(51, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Mule!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/packer")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(55, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Packer!", 0xFFFFFFAA);
	return 1; 	
	}

	if(cmd[0] == "/phantom" || cmd[0] == "/phant")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(60, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Phantom!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/ripley" || cmd[0] == "/rip")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(73, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Ripley!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/speedo")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(83, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Speedo!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/steed")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(85, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Steed!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/yankee")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(104, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Yankee!", 0xFFFFFFAA);
	return 1; 	
	}
	
	if(cmd[0] == "/burrito" || cmd[0] == "/bur")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	local burri = random(10,11)
	local burricolour = random(0,133)
	cars[playerid] = createVehicle(burri, position[0] + 2, position[1], position[2] + 1, 0, burricolour, burricolour, burricolour, burricolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
		if(burri == 10)
		{
		sendPlayerMessage(playerid, "You Have a Burrito!", 0xFFFFFFAA);
		}
	else
	{
		if(burri == 11)
		{
			sendPlayerMessage(playerid, "You Have a Burrito (Style 2)!", 0xFFFFFFAA);
		}
	}
	return 1; 	
	}
	
	if(cmd[0] == "/pony")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
	cars[playerid] = createVehicle(66, position[0] + 2, position[1], position[2] + 1, 0, rcolour, rcolour, rcolour, rcolour);
	warpPlayerIntoVehicle(playerid, cars[playerid]);
	sendPlayerMessage(playerid, "You Have a Pony!", 0xFFFFFFAA);
	return 1; 	
	}
	
//---------------------------------------------------------------------------------------	
//Other Commands
//---------------------------------------------------------------------------------------		
	
	if(cmd[0] == "/rcar")
	{		
		if(cars[playerid] != -1)
		{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
		}
		{
		local rcar = random(1, 123);
		local head = getPlayerHeading(playerid);
			if(rcar < 0 || rcar == 41 || rcar == 107 || rcar == 111 || rcar > 123) return sendPlayerMessage(playerid, "ERROR:" + cmd[0] + " has requested a invalid Model ID, enter " + cmd[0] + "  again.", 0xCC0000AA); 
			{	
				cars[playerid] = createVehicle(rcar, position[0] + 2, position[1], position[2] + 1, head, rcolour, rcolour, rcolour, rcolour);
				warpPlayerIntoVehicle(playerid, cars[playerid]);
				sendPlayerMessage(playerid, "You requested a " + vehicleNames[rcar] + "(ID:" + rcar + ")!",0xFFFFFFAA);
			}
		} 	
	return 1; 	
	}
	
	if(cmd[0] == "/dcar")
	{
//		if(Admin[playerid] >= 2) 
//		{
			deleteAllVehicles();
			sendPlayerMessage(playerid, "You have deleted all cars!", 0xFFFFFFAA);
			sendMessageToAll(" " + getPlayerName(playerid) + " (" + playerid + ") has deleted all Cars",0x20B2AAAA);
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
			if(cmd.len >= 2)
			{
				if(cmd.len == 2)
				{
					foreach(i,playername in getPlayers())
					{
						changeVehicleModel(i,cmd[1].tointeger(), null);
					}
					sendMessageToAll(" " + getPlayerName(playerid) + " (ID: " + playerid + ") has change all cars to look the same.",0x00FF00FF);
				}
				if(cmd.len == 3)
				{
					foreach(i,playername in getPlayers())
					{
						changeVehicleModel(i,cmd[1].tointeger(), cmd[2].tointeger());
					}
					sendMessageToAll(" " + getPlayerName(playerid) + " (ID: " + playerid + ") has change all cars to look the same.",0x00FF00FF);
				}
			}
			else
			{
				sendPlayerMessage(playerid, "USAGE: '/gasv' or '/giveallsamevehicle [modelid] [Colour]", 0xCC0000AA); 
				sendPlayerMessage(playerid, "       The colour varible is optional.", 0xCC0000AA); 
			}
//		}
//		else
//		{
//			sendPlayerMessage(playerid, "ERROR: Your are not a Admin!", 0xCC0000AA); 
//		}	
	return 1; 	
	}
	
	if(cmd[0] == "/rscars" || cmd[0] == "/refreshspawncars")
	{
//		if(Admin[playerid] >= 2) 
//		{
			SpawnCars();
//		}
//		else
//		{
//			 sendPlayerMessage(playerid, "ERROR: Your are not a Admin!",0xCC0000AA); 
//		}
	return 1; 	
	}
	
	if(cmd[0] == "/180")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			local rotation = getVehicleRotation(vehicleid);
			if(rotation[2].tofloat() >= 180.0) return setVehicleRotation(vehicleid, rotation[0].tofloat(),rotation[1].tofloat(),0.0);
			{
				local newRot = rotation[2].tofloat(0 + 180.0;
				setVehicleRotation(vehicleid, rotation[0].tofloat(),rotation[1].tofloat(),newRot.tofloat());
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
			local rotation = getVehicleRotation(vehicleid);
			if(rotation[2].tofloat() >= 270.0) return setVehicleRotation(vehicleid, rotation[0].tofloat(),rotation[1].tofloat(),0.0);
			{
				local newRot = rotation[2].tofloat() + 90.0;
				setVehicleRotation(vehicleid, rotation[0].tofloat(),rotation[1].tofloat(),newRot.tofloat());
			}
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}	
	}

	if(cmd[0] == "/efix" || cmd[0] == "/enginefix")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			setVehicleEngineHealth(vehicleid, 1000);
			displayPlayerText(playerid, 0.5, 0.5, "~g~Vehicle Engine Fixed!", 1500);	
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}		
	}		

	if(cmd[0] == "/fix" || cmd[0] == "/repair")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local VehicleID = getPlayerVehicleId(playerid);
			setVehicleHealth(vehicleID, 1000);
			setVehicleEngineHealth(vehicleid, 1000);
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
	
	if(cmd[0] == "/lockcar" || cmd[0] == "/lc")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleid = getPlayerVehicleId(playerid);
			removePlayerFromVehicle(playerid, true);
			setVehicleLocked(vehicleid, 1);
			sendPlayerMessage(playerid,0xFFFF00FF, "MSG Your car is now locked. Please leave the car.");
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}		
	}
	
	if(cmd[0] == "/unlockcar" || cmd[0] == "/ulc")
	{
		local vehicleid = getPlayerVehicleId(playerid);
		setVehicleLocked(cars[playerid], 0);
		sendPlayerMessage(playerid,0xFFFF00FF, "MSG Your car is now unlocked.");
		return 1; 	
	}	
	
	if(cmd[0] == "/nos")
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			//if(inRace[playerid] == 1)
			//{
				local vehicleid = getPlayerVehicleId(playerid);
				local vehVelo = getVehicleVelocity(vehicleid);
				if(cmd.len() == 2)
				{
					if(cmd[1].tostring() == "fast" || cmd[1].tostring() == "f") return setVehicleVelocity(vehicleid, vehVelo[0].tofloat() + 75.0, vehVelo[1].tofloat() + 75.0, vehVelo[2].tofloat() + 75.0);
					if(cmd[1].tostring() == "slow" || cmd[1].tostring() == "s") return setVehicleVelocity(vehicleid, vehVelo[0].tofloat() + 20.0, vehVelo[1].tofloat() + 20.0, vehVelo[2].tofloat() + 20.0);
				}
				else
				{
					sendPlayerMessage(playerid, "USAGE: '/nos f(ast)' or '/nos s(low)'",0xCC0000AA); 
				}
			//}
			//else
			//{
			//	sendPlayerMessage(playerid, "ERROR: You are in a race, you can not use NOS.",0xCC0000AA); 
			//}			
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.",0xCC0000AA); 
		}
	return 1;
	}
//---------------------------------------------------------------------------------------	
// Standard Vechicle Spawning
//-----------------------------
// For Regular Users
// This command can spawn any vehicle with a id OR a string (eg. the name of the car).
//---------------------------------------------------------------------------------------
	if(cmd[0] == "/v")
	{
	if(cars[playerid] != -1)
	{
		deleteVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
		local head = getPlayerHeading(playerid);
		
		if(cmd.len() == 2)
	    {	
			if(getVehicleModelFromString(cmd[1]))
			{
				local paint1 = random(0,133);
				local paint2 = random(0,133);
				
				if(getVehicleModelFromString(cmd[1])< 0 || getVehicleModelFromString(cmd[1]) == 41 || getVehicleModelFromString(cmd[1]) == 107 || getVehicleModelFromString(cmd[1]) == 111 || getVehicleModelFromString(cmd[1]) > 123) return sendPlayerMessage(playerid, "ERROR: Invalid Model ID!");
				{
					cars[playerid] = createVehicle(getVehicleModelFromString(cmd[1]), position[0] + 1, position[1] + 1, position[2] + 1, head, paint1, paint2, paint1, paint2);
					warpPlayerIntoVehicle(playerid, cars[playerid]);
					sendPlayerMessage(playerid, 0x10F441AA, "You have sucessfully Created a "+ vehicleNames[getVehicleModelFromString(cmd[1])] + "(ID: " + getVehicleModelFromString(cmd[1]) + ")!");
				}
			}
			else
			{
			sendPlayerMessage(playerid, "ERROR: That vehicle does not extist or is misspelled");
			}
		}
		else
		{
		sendPlayerMessage(playerid, "ERROR: /v [carmodelid/carname]");		
		}
	}
	
//---------------------------------------------------------------------------------------	
// Permanent Vechicle Spawning
//-----------------------------
// Made for Admins
// This command can spawn any vehicle with a id or a string but unlike the other vehicle
// spawning commands this one permanently saves the cars onto the server (unless server
// is restarted).
//---------------------------------------------------------------------------------------
	if(cmd[0] == "/pv")
	{
//		if(Admin[playerid] >= 2) 
//		{
			local head = getPlayerHeading(playerid);
			
			if(cmd.len() == 2)
			{	
				if(getVehicleModelFromString(cmd[1]))
				{
					local paint1 = random(0,133);
					local paint2 = random(0,133);
					
					if(getVehicleModelFromString(cmd[1])< 0 || getVehicleModelFromString(cmd[1]) == 41 || getVehicleModelFromString(cmd[1]) == 107 || getVehicleModelFromString(cmd[1]) == 111 || getVehicleModelFromString(cmd[1]) > 123) return sendPlayerMessage(playerid, "ERROR: Invalid Model ID!",  0xCC0000AA);
					{
						createVehicle(getVehicleModelFromString(cmd[1]), position[0] + 1, position[1] + 1, position[2] + 1, head, paint1, paint2, paint1, paint2);
						local vehicleid = getPlayerVehicleId(playerid)
						warpPlayerIntoVehicle(playerid, vehicleid);
						sendPlayerMessage(playerid, "You have sucessfully Created a "+ vehicleNames[getVehicleModelFromString(cmd[1])] + "(ID: " + getVehicleModelFromString(cmd[1]) + ")!", 0x10F441AA);
					}
				}
				else
				{
				sendPlayerMessage(playerid, "ERROR: That vehicle does not extist or is misspelled", 0xCC0000AA,);
				}
			}
			else
			{
			sendPlayerMessage(playerid, "ERROR: /v [carmodelid/carname]", 0xCC0000AA);		
			}
//		}
//		else
//		{
//		sendPlayerMessage(playerid, "ERROR: Your are not a Admin!", 0xCC0000AA); 
//		}
	}

//---------------------------------------------------------------------------------------	
// Custom Colour Vechicle Spawning
//-----------------------------
// For people who want to create a vehicle while choosing its colour
// Since /paint is here, theres is really no need for this but if you want it, its here
//---------------------------------------------------------------------------------------
	
	if(cmd[0] == "/vc")
	{
	if(cars[playerid] != -1)
	{
		destroyVehicle(cars[playerid]);
		cars[playerid] = -1;	
	}
		local head = getPlayerHeading(playerid);
		
		if(cmd.len() == 6)
	    {	
			if(getVehicleModelFromString(cmd[1]))
			if(cmd[2].tointeger() > -1 && cmd[2].tointeger() <= 133)
			if(cmd[3].tointeger() > -1 && cmd[3].tointeger() <= 133) 
			if(cmd[4].tointeger() > -1 && cmd[4].tointeger() <= 133)
			if(cmd[5].tointeger() > -1 && cmd[5].tointeger() <= 133) 
			{
				local pa1 = cmd[2].tointeger();
				local pa2 = cmd[3].tointeger(); 
				local pa3 = cmd[4].tointeger(); 
				local pa4 = cmd[5].tointeger();
				{

					if(getVehicleModelFromString(cmd[1])< 0 || getVehicleModelFromString(cmd[1]) == 41 || getVehicleModelFromString(cmd[1]) == 107 || getVehicleModelFromString(cmd[1]) == 111 || getVehicleModelFromString(cmd[1]) > 123) return sendPlayerMessage(playerid, "ERROR: Invalid Model ID!", 0xCC0000AA);
					{
						cars[playerid] = createVehicle(getVehicleModelFromString(cmd[1]), position[0] + 1, position[1] + 1, position[2] + 1, head, pa1, pa2, pa3, pa4);
						sendPlayerMessage(playerid,"You have sucessfully Created a "+ vehicleNames[getVehicleModelFromString(cmd[1])] + "(ID: " + getVehicleModelFromString(cmd[1]) + ")!", 0x10F441AA);
					}

				}
			}
			else
			{
			sendPlayerMessage(playerid, "ERROR: /v [carmodelid/carname] [colour1] [colour2] [colour3] [colour4]", 0xCC0000AA);
			sendPlayerMessage(playerid, "KEY: Colour1 = Body Colour , Colour2 = Reflection Colour", 0xCC0000AA);
			sendPlayerMessage(playerid, "     Colour3 = Rims and Trimmings, Colour4 = Other(Special Cars)", 0xCC0000AA);
			}
		}
		else
		{
		sendPlayerMessage(playerid, "ERROR: /v [carmodelid/carname] [colour1] [colour2] [colour3] [colour4]", 0xCC0000AA);
		sendPlayerMessage(playerid, "KEY: Colour1 = Body Colour , Colour2 = Reflection Colour", 0xCC0000AA);
		sendPlayerMessage(playerid, "     Colour3 = Rims and Trimmings, Colour4 = Other(Special Cars)", 0xCC0000AA);		
		}
	}
	
	
//---------------------------------------------------------------------------------------	
//PAINT
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/paint" || cmd[0] == "/pa") 
	{
		if(isPlayerInAnyVehicle(playerid))
		{
			local vehicleID = getPlayerVehicleId(playerid);
			if(cmd.len() == 5) 
			{
				if(cmd[1].tointeger() > -1 && cmd[1].tointeger() <= 136) 
				{
					if(cmd[2].tointeger() > -1 && cmd[2].tointeger() <= 136) 
					{
						if(cmd[3].tointeger() > -1 && cmd[3].tointeger() <= 136)
						{
							if(cmd[4].tointeger() > -1 && cmd[4].tointeger() <= 136) 
							{
								setVehicleColor(vehicleID, cmd[1].tointeger() , cmd[2].tointeger() , cmd[3].tointeger(), cmd[4].tointeger())
								displayPlayerText(playerid, 0.5, 0.5, "~g~Vehicle Colour Changed!", 1500);
							}
							else
							{
								sendPlayerMessage(playerid, "ERROR: Invalid Colour/s", 0xCC0000AA);	
								sendPlayerMessage(playerid, "Colours are 0 to 136", 0xCC0000AA);							
							}
						}
						else
						{
							sendPlayerMessage(playerid, "ERROR: Invalid Colour/s", 0xCC0000AA);	
							sendPlayerMessage(playerid, "Colours are 0 to 136", 0xCC0000AA);	
						}
					}
					else
					{
						sendPlayerMessage(playerid, "ERROR: Invalid Colour/s", 0xCC0000AA);	
						sendPlayerMessage(playerid, "Colours are 0 to 136", 0xCC0000AA);	
					}
				}
				else
				{
					sendPlayerMessage(playerid, "ERROR: Invalid Colour/s", 0xCC0000AA);	
					sendPlayerMessage(playerid, "Colours are 0 to 136", 0xCC0000AA);	
				}
			}
			else
			{
				sendPlayerMessage(playerid, "ERROR: /pa(int) [COLOR_1] [COLOR_2] [COLOR_3] [COLOR_4]", 0xCC0000AA);	
				sendPlayerMessage(playerid, "Colours are 0 to 136", 0xCC0000AA);	
			}
		}
		else
		{
			sendPlayerMessage(playerid, "ERROR: You are not in a vehicle.", 0xCC0000AA);
		}
	}
//---------------------------------------------------------------------------------------	
//Help Section
//---------------------------------------------------------------------------------------	
	if(cmd[0] == "/carhelp") 
	{
		sendPlayerMessage(playerid, "Car/Bike Commands",0x33FF33AA);
		sendPlayerMessage(playerid, "/car = Infurnus(Fastest Car) /nrg = NRG-900(Fast Bike) /rcar =Random Car",0xFF9900AA);
		sendPlayerMessage(playerid, "Category Commands",0x00FF7FAA);
		sendPlayerMessage(playerid, "/suvhelp ,/suvhelp2 ,/bikehelp, /helihelp, /pshelp, /schelp, /boathelp",0xFF9900AA);
		sendPlayerMessage(playerid, "/ehelp, /sh, /sh2, /sh3, /mhelp, /ihelp",0xFF9900AA);
		sendPlayerMessage(playerid, "Other Vehicle-Related Commands", 0x00FF7FAA);
		sendPlayerMessage(playerid, "/rcar =Random car, /v =Custom Car /pa(int) = Paint Car",0xFF9900AA);
		sendPlayerMessage(playerid, "/vc = custom car with paint /f(lip) = Flip /efix = Engine Fix",0xFF9900AA);
		sendPlayerMessage(playerid, "/fix = Body Fix",0xFF9900AA);
	//	if(Admin[playerid] >= 2) 
	//	{
			sendPlayerMessage(playerid, "/rscars =Refresh Spawn Cars, /dcar =Delete All Cars",0xFF9900AA);
			sendPlayerMessage(playerid, "/tasty =(Secret) IRE CREAM Vehicle",0xFF9900AA);
			sendPlayerMessage(playerid, "/gasv",0xFF9900AA);
	//	}
		return 1; 	
	}
	
	if(cmd[0] == "/carcmds" || cmd[0] == "/carcommands") 
	{	
		sendPlayerMessage(playerid, "/rcar =Random car, /v =Custom Car /pa(int) = Paint Car", 0xFF9900AA);
		sendPlayerMessage(playerid, "/vc = custom car with paint /f(lip) = Flip /efix = Engine Fix", 0xFF9900AA);
		sendPlayerMessage(playerid, "/fix = Body Fix", 0xFF9900AA);	
		return 1; 	
	}
	
	if(cmd[0] == "/carcategory" || cmd[0] == "/carcat") 
	{
		sendPlayerMessage(playerid, "Category Commands", 0x33FF33AA);
		sendPlayerMessage(playerid, "/suvhelp ,/suvhelp2 ,/bikehelp, /helihelp, /pshelp, /schelp, /boathelp", 0xFF9900AA);
		sendPlayerMessage(playerid, "/ehelp, /sh, /sh2, /sh3, /mhelp, /ihelp", 0xFF9900AA);
		return 1; 	
	}
	
    if(cmd[0] == "/suvhelp" || cmd[0] == "/suvh")
	{
		sendPlayerMessage(playerid, "SUV's Commands {/subhelp or /suvh)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/fxt =Cavalcade FXT, /hunt = Huntley Sports, /pat = Patriot", 0xFF9900AA);
		sendPlayerMessage(playerid, "/bob =Bobcat, /cav =Cavalcade, /reb = Rebla, /mvan = Minivan", 0xFF9900AA);
		sendPlayerMessage(playerid, "/hab =Habanero, /mvan = Minivan, /land = Landstalker", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..... /suvhelp2", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/suvhelp2" || cmd[0] == "/suvh2")
	{
		sendPlayerMessage(playerid, "SUV's Commands (Help 2) (/suvhelp2 or /suvh2)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/moonb =Moonbeam, /per =Perennial, /ran =Rancher, /rom =Romero, /sol =Solair", 0xFF9900AA);
		sendPlayerMessage(playerid, "/stra = Stratum /E109 =E109", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carhelp, /subhelp", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/bikehelp" || cmd[0] == "/bhelp" || cmd[0] == "/bh")
	{
		sendPlayerMessage(playerid, "Bike Commands (/bikehelp, /bh, /bhelp)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/fag =Faggio, /pcj =PCJ-600, /nrg =NRG-900, /san =Sanchez", 0xFF9900AA);
		sendPlayerMessage(playerid, "NOTE: Some bikes are not here as these bikes Crash the server.", 0xFF9900AA);
		sendPlayerMessage(playerid, "      Sorry for any inconvenience.", 0xFF9900AA);
		return 1; 	
	}

	if(cmd[0] == "/helihelp" || cmd[0] == "/hhelp" || cmd[0] == "/hh")
	{
		sendPlayerMessage(playerid, "Helicoptor Commands (/helihelp, /hh, /hhelp)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/heli =Annihilator, /heli2 =Maverick, /heli3 =Police Maverick, /heli4 =Helitours Maverick", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carhelp", 0xFF9900AA);
		return 1; 	
	}	
	
	if(cmd[0] == "/publicservicehelp" || cmd[0] == "/pshelp" || cmd[0] == "/psh")
	{
		sendPlayerMessage(playerid, "Public Services Commands (/publicservicehelp, /pshelp, /psh)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/bus =Bus, /cabby =Cabby, /taxi =Taxi, /taxi2 =Taxi (Style 2)", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carhelp", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/sportscarhelp" || cmd[0] == "/schelp" || cmd[0] == "/sch")
	{
		sendPlayerMessage(playerid, "Sports Car Commands (/sportscarhelp, /schelp, /sch)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/shee =Banshee, /comet =Comet, /coq =Coquette, /sulrs =Sultan RS", 0xFF9900AA);
		sendPlayerMessage(playerid, "/sgt =Super GT, /car =Infurnus, /tur =Turismo", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carhelp", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/boathelp" || cmd[0] == "/bhelp" || cmd[0] == "/boh")
	{
		sendPlayerMessage(playerid, "Boat Commands (/boathelp, /bhelp, /boh)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/boat =Dingy, /jetm =Jetmax, /marq =Marquis, /reef =Reefer", 0xFF9900AA);
		sendPlayerMessage(playerid, "/squ =Squalo, /tugb =Tugboat, /trop =Tropic /pred =Predator(Police Boat)", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carhelp", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/emergencyhelp" || cmd[0] == "/ehelp" || cmd[0] == "/eh")
	{
		sendPlayerMessage(playerid, "Emergency Commands (/emergencyhelp, /ehelp, /eh)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/fbi =FBI Buffalo, /pcar =NOOSE Cruiser, /pcar2 =NOOSE Patriot, /pcar3 =Police Car", 0xFF9900AA);
		sendPlayerMessage(playerid, "/pcar4 =Police Car(Style 2), /firet =Firetruck, /ambo =Ambulance", 0xFF9900AA);
		sendPlayerMessage(playerid, "/pred =Predator(Police Boat), /pcar5 =Police Stockade /pcar6 = NOOSE Stockade", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carhelp", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/sedanhelp" || cmd[0] == "/saloonhelp" || cmd[0] == "/shelp" || cmd[0] == "/sh")
	{
		sendPlayerMessage(playerid, "Sedans/Saloons Commands (/sedanhelp, /saloonhelp, /shelp, /sh)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/adm =Admiral, /cog =Cognoscenti, /df =DF8-90, /dil = Dilettante", 0xFF9900AA);
		sendPlayerMessage(playerid, "/esp =Esperanto, /emp =Emperor, /remp =Rusted Emperor, /chav =Chavos", 0xFF9900AA);
		sendPlayerMessage(playerid, "/fero =Feroci, /ferov =Feroci VIP, /hak =hakumai, /int =intruder", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../sedanhelp2 or /sh2", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/sedanhelp2" || cmd[0] == "/saloonhelp2" || cmd[0] == "/shelp2" || cmd[0] == "/sh2")
	{
		sendPlayerMessage(playerid, "Sedans/Saloons Commands (/sedanhelp2, /saloonhelp2, /shelp2, /sh2)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/lok =Lokus, /mar =marbella, /mer =Merit, /orac =Oracle", 0xFF9900AA);
		sendPlayerMessage(playerid, "/pin =pinnacle, /pmp =PMP-600, /prem =premier, /pres =presidente", 0xFF9900AA);
		sendPlayerMessage(playerid, "/prim =Primo, /scha =Schafter, /limo =Stretch, /sult =Sultan", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../sedanhelp3 or /sh3", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/sedanhelp3" || cmd[0] == "/saloonhelp3" || cmd[0] == "/shelp3" || cmd[0] == "/sh3")
	{
		sendPlayerMessage(playerid, "Sedans/Saloons Commands (/sedanhelp3, /saloonhelp3, /shelp3, /sh3)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/vin =Vincent, /washi =Washington, /will =Willard", 0xFF9900AA);
		sendPlayerMessage(playerid, "/felt =feltzer, /fort =fortune, /futo =Futo", 0xFF9900AA);
		sendPlayerMessage(playerid, "/sen =Sentinel, /uran =Uranus /blist =Blista Compact", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carcat", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/musclehelp" || cmd[0] == "/mhelp" || cmd[0] == "/mh")
	{
		sendPlayerMessage(playerid, "Muscle Car Commands (/musclehelp, /mhelp, /mh)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/dukes =Dukes, /bucc =Buccaneer, /fac =Faction, /mana =Manana", 0xFF9900AA);
		sendPlayerMessage(playerid, "/pey =Peyote, /sab =Sabre, /sab2 =Rusted Sabre, /sabgt =Sabre GT", 0xFF9900AA);
		sendPlayerMessage(playerid, "/ruin =Ruiner, /vig =Vigero, /rvig =Rusted Vigero, /stall =Stallion ", 0xFF9900AA);
		sendPlayerMessage(playerid, "/vd =Voodoo, /vir =Virgo", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carcat", 0xFF9900AA);
		return 1; 	
	}
	
	if(cmd[0] == "/industrialhelp" || cmd[0] == "/ihelp" || cmd[0] == "/ih")
	{
		sendPlayerMessage(playerid, "Muscle Car Commands (/industrialhelp, /ihelp, /ih)", 0x33FF33AA);
		sendPlayerMessage(playerid, "/air =Airtug, /ben =Benson, /biff =Biff, /box =Boxville", 0xFF9900AA);
		sendPlayerMessage(playerid, "/fb =Flatbed, /fl =Forklight, /mule =Mule, /packer =Packer", 0xFF9900AA);
		sendPlayerMessage(playerid, "/phant =Phantom, /rip =Ripley, /speedo =Speedo, /steed =Steed", 0xFF9900AA);
		sendPlayerMessage(playerid, "/yankee =Yankee, /pony =Pony, /bur =Burrito", 0xFF9900AA);
		sendPlayerMessage(playerid, "Want More?..../carcat", 0xFF9900AA);
		return 1; 	
	}
return 0;
}
addEvent("playerCommand", onPlayerCommand);