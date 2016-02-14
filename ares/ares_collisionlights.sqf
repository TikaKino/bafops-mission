_veh = (vehicle (_this select 0));
_light = true;
if (isCollisionLightOn _veh) then {
	_light = false;
}
[_veh,_light] remoteExec ["setCollisionLight", _veh];