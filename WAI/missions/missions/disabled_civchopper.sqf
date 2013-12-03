private ["_vehname","_veh","_position","_vehclass","_vehdir","_objPosition"];


_vehclass = civil_aircraft call BIS_fnc_selectRandom;

_vehname	= getText (configFile >> "CfgVehicles" >> _vehclass >> "displayName");
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;
diag_log format["WAI: Mission Civilian Aircraft Started At %1",_position];

_veh = createVehicle [_vehclass,_position, [], 0, "CAN_COLLIDE"];
_vehdir = round(random 360);
_veh setDir _vehdir;
clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_veh];
diag_log format["WAI: Mission Civilian Aircraft spawned a %1",_vehname];

_objPosition = getPosATL _veh;
//[_veh,[_vehdir,_objPosition],_vehclass,true,"0"] call custom_publish;

_rndnum = round (random 3) + 4;
[[_position select 0, _position select 1, 0],                  //position
_rndnum,						  //Number Of units
1,					      //Skill level 0-1. Has no effect if using custom skills
"Random",			      //Primary gun set number. "Random" for random weapon set.
4,						  //Number of magazines
"",						  //Backpack "" for random or classname here.
"Bandit2_DZ",			  //Skin "" for random or classname here.
"Random",				  //Gearset number. "Random" for random gear set.
true
] call spawn_group;

if ((random 5) < 1) then {
	[[[(_position select 0), (_position select 1) + 10, 0]], //position(s) (can be multiple).
	"M2StaticMG",             //Classname of turret
	0.5,					  //Skill level 0-1. Has no effect if using custom skills
	"Bandit2_DZ",				          //Skin "" for random or classname here.
	1,						  //Primary gun set number. "Random" for random weapon set. (not needed if ai_static_useweapon = False)
	2,						  //Number of magazines. (not needed if ai_static_useweapon = False)
	"",						  //Backpack "" for random or classname here. (not needed if ai_static_useweapon = False)
	"Random"				  //Gearset number. "Random" for random gear set. (not needed if ai_static_useweapon = False)
	] call spawn_static;  
};

[_position,_vehname] execVM "\z\addons\dayz_server\WAI\missions\compile\markers.sqf";
[nil,nil,rTitleText,"Bandits have disabled a Civilian Aircraft! Check your map for the location!", "PLAIN",10] call RE;

waitUntil
{
	sleep 5;
	_playerPresent = false;
	{if((isPlayer _x) AND (_x distance _position <= 150)) then {_playerPresent = true};}forEach playableUnits;
	(_playerPresent)
};

[_veh,[_vehdir,_objPosition],_vehclass,true,"0"] call custom_publish;

waitUntil
{
	sleep 5;
	_playerPresent = false;
	{if((isPlayer _x) AND (_x distance _position <= 25)) then {_playerPresent = true};}forEach playableUnits;
	(_playerPresent)
};

diag_log format["WAI: Mission Civilian Aircraft Ended At %1",_position];
[nil,nil,rTitleText,"Survivors have secured the Civilian Aircraft!", "PLAIN",10] call RE;
missionrunning = false;