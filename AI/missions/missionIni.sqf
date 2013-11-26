custom_publish  = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\missions\compile\custom_publishVehicle.sqf";
spawn_ammo_box  = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\missions\compile\ammobox.sqf";


//load mission config
[] ExecVM "\z\addons\dayz_server\compile\AI\missions\missionCfg.sqf";
diag_log "WAI: Mission Config File Loaded";
[] ExecVM "\z\addons\dayz_server\compile\AI\missions\missions.sqf";