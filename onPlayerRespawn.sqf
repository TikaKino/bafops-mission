_new = (_this select 0);
_old = (_this select 1);

if(!isNull _old) then {
	deleteVehicle _old;
};

[gm_1,[[_new],true]] remoteExec ["addCuratorEditableObjects",2];