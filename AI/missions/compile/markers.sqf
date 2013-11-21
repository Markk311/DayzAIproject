if(!isServer) exitWith {};
private ["_position","_Marker","_name"];
_position = _this select 0;
_name = _this select 1;

_Marker = "";
markerready = false;
while {missionrunning} do {
	_Marker = createMarker ["Mission", _position];
	_Marker setMarkerColor "ColorRed";
	_Marker setMarkerShape "ELLIPSE";
	_Marker setMarkerBrush "Grid";
	_Marker setMarkerSize [200,200];
	_Marker setMarkerText _name;
	sleep 30;
	deleteMarker _Marker;
};
if (_Marker == "Mission") then {
	deleteMarker _Marker;
};
markerready = true;