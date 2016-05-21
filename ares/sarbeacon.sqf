if (isServer) then {

_target = (_this select 0);
_accuracy = (_this select 1);
_texthint = (_this select 2);
_update = (_this select 3);

[_target,_accuracy,_texthint,_update] spawn {

	_target = (_this select 0);
	_targetname = (name _target);
	_accuracy = (_this select 1);
	_accuracymarker = _accuracy * 0.90;
	_texthint = (_this select 2);
	_update = (_this select 3);

	_targetpos = position _target;
	_beaconpos = [(_targetpos select 0) - _accuracymarker + (random [0,_accuracymarker,_accuracymarker*2]),(_targetpos select 1) - _accuracymarker + (random [0,_accuracymarker,_accuracymarker*2])];

	_beacon = createMarker [_targetname + "sarbeacon_area",_beaconpos];
	_beacon setMarkerSize [_accuracy,_accuracy];
	_beacon setMarkerShape "ELLIPSE";
	_beacon setMarkerBrush "Solid";
	_beacon setMarkerColor "ColorUNKNOWN";
	_beacon setMarkerAlpha 0.75;
	_beacon setMarkerPos _beaconpos;
	
	_beacontext = createMarker [_targetname + "sarbeacon_text",_beaconpos];
	_beacontext setMarkerShape "ICON";
	_beacontext setMarkerType "mil_dot";
	_beacontext setMarkerColor "ColorUNKNOWN";
	_beacontext setMarkerAlpha 0.75;
	_beacontext setMarkerText _texthint;
	_beacontext setMarkerPos _beaconpos;

	while {alive _target} do {
		_ntargetpos = position _target;
		_nbeaconpos = [(_ntargetpos select 0) - _accuracymarker + (random [0,_accuracymarker,_accuracymarker*2]),(_ntargetpos select 1) - _accuracymarker + (random [0,_accuracymarker,_accuracymarker*2])];
		_beacon setMarkerPos _nbeaconpos;
		_beacontext setMarkerPos _nbeaconpos;
		sleep _update;
	};
	
	deleteMarker _beacon;
	deleteMarker _beacontext;
	
};
};