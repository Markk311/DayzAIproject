spawn_group = 	compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\compile\SpawnGroup.sqf";
group_waypoints = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\compile\patrol.sqf";
spawn_static  = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\compile\SpawnStatic.sqf";
heli_para  = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\compile\heli_para.sqf";

on_kill = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\compile\ai_killed.sqf";
on_kill_static = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\compile\ai_killed_static.sqf";
on_kill_chopper = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\compile\ai_killed_chopper.sqf";

ai_monitor = compile preprocessFileLineNumbers "\z\addons\dayz_server\compile\AI\compile\AImonitor.sqf";

createCenter east;
WEST setFriend [EAST,0];
EAST setFriend [WEST,0];

ai_ground_units = 0;
ai_emplacement_units = 0;
ai_air_units = 0;

//Load config
[] ExecVM "\z\addons\dayz_server\compile\AI\AIconfig.sqf";

[] ExecVM "\z\addons\dayz_server\compile\AI\missions\Missions.sqf";

[] spawn ai_monitor;