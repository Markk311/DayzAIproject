if (!isServer) exitWith {};

diag_log "WAI: AI Monitor Started";
sleep 60;
while {true} do {

	diag_log format ["%1 Active ground units", ai_ground_units];
	diag_log format ["%1 Active emplacement units", ai_emplacement_units];
	diag_log format ["%1 Active chopper units (Crew)", ai_air_units];

	sleep 600;
};