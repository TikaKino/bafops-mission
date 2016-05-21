if (isServer) then {

_target = (_this select 0);
_accuracy = (_this select 1);
_texthint = (_this select 2);
_update = (_this select 3);
_color = (_this select 4);
_remove = (_this select 5);

[_target,_accuracy,_texthint,_update,_color,_remove] spawn {

	_target = (_this select 0);
	_targetname = (name _target);
	_accuracy = (_this select 1);
	_texthint = (_this select 2);
	_update = (_this select 3);
	_color = (_this select 4);
	_remove = (_this select 5);
		
	//If there is an existing beacon, update instead of starting again
	_beacon = _target getVariable ["sarbeacon_beacon",""];
	_beacontext = _target getVariable ["sarbeacon_beacontext",""];
	
	if((_beacon != "")) then {
		
		_beacon setMarkerSize [_accuracy,_accuracy];
		_beacon setMarkerColor _color;
		
		_beacontext setMarkerText _texthint;
		_beacontext setMarkerColor _color;
		
		_target setVariable ["sarbeacon_status",true,true];
		_target setVariable ["sarbeacon_update",_update,true];
		_target setVariable ["sarbeacon_remove",_remove,true];
		_target setVariable ["sarbeacon_accuracy",_accuracy,true];
		
	} else {
	
		//Generate initial beacon position
		_targetpos = position _target;
		_accuracymarker = _accuracy * 0.9;
		_beaconpos = [(_targetpos select 0) - _accuracymarker + (random [0,_accuracymarker,_accuracymarker*2]),(_targetpos select 1) - _accuracymarker + (random [0,_accuracymarker,_accuracymarker*2])];

		//Create circular area
		_beacon = createMarker [_targetname + "sarbeacon_area",_beaconpos];
		_beacon setMarkerSize [_accuracy,_accuracy];
		_beacon setMarkerShape "ELLIPSE";
		_beacon setMarkerBrush "Solid";
		_beacon setMarkerColor _color;
		_beacon setMarkerAlpha 0.75;
		_beacon setMarkerPos _beaconpos;
		
		//Create text marker
		_beacontext = createMarker [_targetname + "sarbeacon_text",_beaconpos];
		_beacontext setMarkerShape "ICON";
		_beacontext setMarkerType "mil_dot";
		_beacontext setMarkerColor _color;
		_beacontext setMarkerAlpha 0.75;
		_beacontext setMarkerText _texthint;
		_beacontext setMarkerPos _beaconpos;
		
		//Set status variable and note names of beacon and text
		_target setVariable ["sarbeacon_status",true,true];
		_target setVariable ["sarbeacon_update",_update,true];
		_target setVariable ["sarbeacon_remove",_remove,true];
		_target setVariable ["sarbeacon_accuracy",_accuracy,true];
		_target setVariable ["sarbeacon_beacon",_beacon,true];
		_target setVariable ["sarbeacon_beacontext",_beacontext,true];
		
		//Keep updating while the target is alive and the status variable is still true
		while {(alive _target) and (_target getVariable ["sarbeacon_status",false])} do {
			//Do new random position
			_ntargetpos = position _target;
			_accuracymarker = _target getVariable ["sarbeacon_accuracy",_accuracy];
			_accuracymarker = _accuracymarker * 0.9;
			_nbeaconpos = [(_ntargetpos select 0) - _accuracymarker + (random [0,_accuracymarker,_accuracymarker*2]),(_ntargetpos select 1) - _accuracymarker + (random [0,_accuracymarker,_accuracymarker*2])];
			//Set the markers' positions
			_beacon setMarkerPos _nbeaconpos;
			_beacontext setMarkerPos _nbeaconpos;
			//sleep the set number of seconds
			_tosleep = _target getVariable ["sarbeacon_update",_update];
			sleep _tosleep;
		};
		
		//If we've been told to clean up on object death, do so.
		_removedeath = _target getVariable ["sarbeacon_remove",_remove];
		if(_removedeath) then {
			deleteMarker _beacon;
			deleteMarker _beacontext;
			_target setVariable ["sarbeacon_beacon","",true];
			_target setVariable ["sarbeacon_beacontext","",true];
		};
		
		//Cleanup: Set status
		_target setVariable ["sarbeacon_status",false,true];
		
	};
	
};
};