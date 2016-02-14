_targetObject = (_this select 0);
_ahead = (_this select 1);

if (!local _targetObject) exitWith {};

_pos = getPos _targetObject;
_posfinal = [(_pos select 0) + (sin(getdir _targetObject)*_ahead), (_pos select 1) + (cos(getdir _targetObject)*_ahead), (_pos select 2)];
_c4 = "rhs_g_gdm40" createVehicle _posfinal;
_c4 setPos _posfinal;
_c4 setDamage 1;