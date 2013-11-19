if (!isServer) exitWith {};

diag_log "AI Monitor Started";
sleep 900;
while {true} do {
	if (ai_clean_dead) then {
		deleteVehicle _x;
		sleep 0.025;
	} forEach allDead;
	
	diag_log format ["%1 Active ground units", ai_ground_units];
	diag_log format ["%1 Active emplacement units", ai_emplacement_units];
	diag_log format ["%1 Active air units", ai_air_units];

	sleep 900;
};