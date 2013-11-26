if(!isServer) exitWith {};

diag_log ["WAI: Starting AI Missions Moniter"];

_missionarray = ["armed_vehicle","crash_spawner","disabled_civchopper","disabled_milchopper","MV22","weapon_cache"];

markerready = true;
missionrunning = false;
_startTime = floor(time);
_result = 0;

while {true} do
{
	_cnt = {alive _x} count playableUnits;
	_currTime = floor(time);
	if((_currTime - _startTime >= 1800) AND (!missionrunning)) then {_result = 1};
	
	if(missionrunning) then
	{
		_startTime = floor(time);
	};
	
	if((_result == 1) AND (_cnt >= 1) AND (markerready))  then
    {
        _mission = _missionarray select (random (count _missionarray - 1));
        execVM format ["\z\addons\dayz_server\WAI\missions\missions\%1.sqf",_mission];
		missionrunning = true;
        diag_log format["WAI: Starting Mission %1",_mission];
        _startTime = floor(time);
        _result = 0;
    } else {
    	sleep 60;
    };    
};
