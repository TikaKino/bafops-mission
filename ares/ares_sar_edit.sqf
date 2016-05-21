_target = (_this select 0);
if(!(isNil "_target")) then {

	_bstatus = _target getVariable ["sarbeacon_status",0];
	_beacon = _target getVariable ["sarbeacon_beacon",0];
	_beacontext = _target getVariable ["sarbeacon_beacontext",0];

	if((_bstatus != 0) and (_beacon != 0) and (_beacontext != 0)) then {
		//Generate a dialog to ask for the script's variables
		_dialogResult =
			[
				"SAR Beacon Color",
				[
					["Color", ["Blufor","Opfor","Independent","Cvilian","Unknown"]]
				]
			] call Ares_fnc_ShowChooseDialog;
		
		if ((count _dialogResult) == 1) then {
		
			_newcolor = "ColorUNKNOWN";
			switch (_dialogResult select 0) do {
				case 0:	{_newcolor = "ColorWEST";};
				case 1:	{_newcolor = "ColorEAST";};
				case 2:	{_newcolor = "ColorGUER";};
				case 3:	{_newcolor = "ColorCIV";};
				case 4:	{_newcolor = "ColorUNKNOWN";};
			};
			
			hint (_newcolor);
		};
		
	} else {
		hint "Unit must have an active SAR Beacon";
	};

} else {
	hint "Unit must have an active SAR Beacon";
};