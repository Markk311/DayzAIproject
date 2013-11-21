custom_publish  = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\missions\compile\custom_publishVehicle.sqf";


//load mission config
[] ExecVM "\z\addons\dayz_server\compile\AI\missions\missionCfg.sqf";
waitUntil{loadedmissioncfg};
[] ExecVM "\z\addons\dayz_server\compile\AI\missions\missions.sqf";
diag_log "WAI: Mission Config File Loaded";