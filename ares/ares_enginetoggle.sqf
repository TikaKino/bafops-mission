if (isEngineOn (vehicle (_this select 0))) then {
	(vehicle (_this select 0)) engineOn false;
} else {
	(vehicle (_this select 0)) engineOn true;
}