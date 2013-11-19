private ["_unitGroup","_postition","_newPos","_center","_wp"];
_unitGroup = _this select 0;
_postition = _this select 1;


_newPos = [(_postition select 0),(_postition select 1),0];
_center = [(_postition select 0),(_postition select 1),0];
for "_x" from 1 to ai_patrol_radius_wp do {
	_pDir = random 360;
    _pRange = 25 + random ai_patrol_radius;
    _newPos = [(_center select 0) + (sin _pDir) * _pRange, (_center select 1) + (cos _pDir) * _pRange, 0];
	if(surfaceIsWater _newPos)then{
			private["_randomWay","_dir"];
			_dir = (((_center) select 0) - (_newPos select 0)) atan2 (((_center) select 1) - (_newPos select 1));
			_randomWay = floor(random 2); 
			while{surfaceIsWater _newPos}do{
				if(_randomWay == 0)then{_dir = _dir + 20;}else{_dir = _dir - 20;};
				if(_dir < 0) then {_dir = _dir + 360;}; 
				_newPos = [(_center select 0) + (sin _dir) * _pRange, (_center select 1) + (cos _dir) * _pRange, 0];
			};
	};
	_wp = _unitGroup addWaypoint [_newPos, 20];
	_wp setWaypointType "SAD";
	_wp setWaypointCompletionRadius 20;
};
_wp = _unitGroup addWaypoint [[(_postition select 0),(_postition select 1),0],20];
_wp setWaypointType "CYCLE";
_wp setWaypointCompletionRadius 20;