private ["_mags","_tool","_position","_box","_class","_numberofguns","_numberoftools","_weapon","_namecfg"];
_position = _this select 0;

_box = createVehicle ["BAF_VehicleBox",[(_position select 0),(_position select 1),0], [], 0, "CAN_COLLIDE"];
clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;

_numberofguns = round(random 5) + 5;
_numberoftools = round(random 3) + 3;


for "_i" from 1 to _numberofguns do {
	_weapon = ammo_box_guns call BIS_fnc_selectRandom;
	_mags = getArray (configFile >> "cfgWeapons" >> _weapon >> "magazines");
	_box addWeaponCargoGlobal [_weapon,1];
	_box addMagazineCargoGlobal [(_mags select 0),round(random 2) + 1];
};
for "_i" from 1 to _numberoftools do {
	_tool = ammo_box_tools call BIS_fnc_selectRandom;
	_box addWeaponCargoGlobal [_tool,2];
};