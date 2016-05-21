_unit = (_this select 0);
if(!(isNil "_unit")) then {
	//Nice and simple; set the status variable to false and the beacon script will stop running
	//on its next pass.
	_unit setVariable ["sarbeacon_status",false,true];
};