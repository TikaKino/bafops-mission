_unit = (_this select 0);
if(!(isNil "_unit")) then {

//Generate a dialog to ask for the script's variables
_dialogResult =
	[
		"SAR Beacon Setup",
		[
			["Accuracy (m)", ""],
			["Refresh (s)", ""],
			["Text", ""],
			["Color", ["Blufor","Opfor","Independent","Cvilian","Unknown"]],
			["Remove on Death", ["true","false"]]
		]
	] call Ares_fnc_ShowChooseDialog;

if ((count _dialogResult) == 5) then { 
	//hint ((_dialogResult select 0)+", "+(_dialogResult select 1)+", "+(_dialogResult select 2));
	
	_accuracy = _dialogResult select 0;
	_accuracy = parseNumber _accuracy; //transform accuracy from string to number
	_refresh = _dialogResult select 1;
	_refresh = parseNumber _refresh; //transform refresh rate from string to number
	_text = _dialogResult select 2;
	
	_color = "ColorUNKNOWN";
	switch (_dialogResult select 3) do {
		case 0:	{_color = "ColorWEST";};
		case 1:	{_color = "ColorEAST";};
		case 2:	{_color = "ColorGUER";};
		case 3:	{_color = "ColorCIV";};
		case 4:	{_color = "ColorUNKNOWN";};
	};
	
	_removeondeath = false;
	switch (_dialogResult select 4) do {
		case 0: {_removeondeath = true;};
		case 1: {_removeondeath = false;};
	};
	
	//use remoteExec and BIS_fnc_execVM to run the SAR beacon script on the server, rather than the GM's machine
	[[_unit,_accuracy,_text,_refresh,_color,_removeondeath],"ares\sarbeacon_ares.sqf"] remoteExec ["BIS_fnc_execVM",2,false];
};

} else {
	hint "Must select an object.";
};