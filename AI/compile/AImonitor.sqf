if (!isServer) exitWith {};

diag_log "WAI: AI Monitor Started";
sleep 60;
while {true} do {
	
	if (ai_clean_dead) then {
	{
		_killedat = _x getVariable "killedat";
			if (!isNil "_killedat") then {
				if ((time - _killedat) >= cleanup_time) then {
					deleteVehicle _x;
	} forEach allDead;
	};

	
	diag_log format ["%1 Active ground units", ai_ground_units];
	diag_log format ["%1 Active emplacement units", ai_emplacement_units];
	diag_log format ["%1 Active chopper units (Crew)", ai_air_units];

	sleep 600;
};