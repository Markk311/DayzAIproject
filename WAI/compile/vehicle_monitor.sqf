if (!isServer) exitWith {};
private ["_veh"];
_veh = _this select 0;
waitUntil { count crew _veh > 0};
while {(alive _veh) and ({alive _x} count crew _veh > 0)} do {
	_veh setVehicleAmmo 1;
	_veh setFuel 1;
	if ({alive _x} count crew _veh == 0) then {
		_veh setDamage 1;
		_veh setVariable ["killedat", time];
	};
	sleep 30;
};
_veh setDamage 1;
_veh setVariable ["killedat", time];