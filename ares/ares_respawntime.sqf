_dialogResult =
	[
		"Set Respawn Time",
		[
			["Time:", ["5","10","15","20","30","45","1:00","1:30","2:00","3:00","4:00","5:00"]]
		]
	] call Ares_fnc_ShowChooseDialog;

if ((count _dialogResult) > 0) then
{
	_time = 50;
	switch (_dialogResult select 0) do
	{
		case 0: { _time = 5; };
		case 1: { _time = 10; };
		case 2: { _time = 15; };
		case 3: { _time = 20; };
		case 4: { _time = 30; };
		case 5: { _time = 45; };
		case 6: { _time = 60; };
		case 7: { _time = 90; };
		case 8: { _time = 120; };
		case 9:{ _time = 180; };
		case 10:{ _time = 240; };
		default { _time = 60; };
	};
	
	_time remoteExec ["setPlayerRespawnTime",0,"respawn_time"];
}