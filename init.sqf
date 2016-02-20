MISSION_ROOT = call {
    private "_arr";
    _arr = toArray str missionConfigFile;
    _arr resize (count _arr - 15);
    toString _arr
};

addCuratorRemote = compileFinal "
	gm_1 addCuratorEditableObjects [[_this select 0],_this select 1];
";
null = [] execVM "playermarker.sqf";
null = [] execVM "groupmarker.sqf";
null = [] execVM "navpoint.sqf";
null = [] execVM "ares\ares_addrhsreinforcementpools.sqf";
null = [] execVM "ares\ares_addafricanreinforcementpools.sqf";
null = ["AI Behaviours", "Center Turret", { [_this select 1] execVM "ares\ares_centerturret.sqf" }] call Ares_fnc_RegisterCustomModule;
null = ["AI Behaviours", "Toggle Engine", { [_this select 1] execVM "ares\ares_enginetoggle.sqf" }] call Ares_fnc_RegisterCustomModule;
null = ["AI Behaviours", "Movement Disable", { [_this select 1] execVM "ares\ares_disablemove.sqf" }] call Ares_fnc_RegisterCustomModule;
null = ["AI Behaviours", "Movement Enable", { [_this select 1] execVM "ares\ares_enablemove.sqf" }] call Ares_fnc_RegisterCustomModule;
null = ["AI Behaviours", "Stance Force Standing", { [_this select 1,"UP"] remoteExecCall ["setUnitPos",_this select 1]; }] call Ares_fnc_RegisterCustomModule;
null = ["AI Behaviours", "Stance Force Crouching", { [_this select 1,"MIDDLE"] remoteExecCall ["setUnitPos",_this select 1];}] call Ares_fnc_RegisterCustomModule;
null = ["AI Behaviours", "Stance Force Prone", { [_this select 1,"DOWN"] remoteExecCall ["setUnitPos",_this select 1]; }] call Ares_fnc_RegisterCustomModule;
null = ["AI Behaviours", "Stance Force Disable", { [_this select 1,"AUTO"] remoteExecCall ["setUnitPos",_this select 1]; }] call Ares_fnc_RegisterCustomModule;
null = ["Equipment", "Remove Cargo", { [_this select 1] execVM "ares\ares_removecargo.sqf" }] call Ares_fnc_RegisterCustomModule;
null = ["Equipment", "Fill Pack", { [_this select 1] execVM "ares\ares_fillpack.sqf" }] call Ares_fnc_RegisterCustomModule;
null = ["Equipment", "Campaign Equipment", { [_this select 1] execVM "ares\ares_equip_campaign.sqf" }] call Ares_fnc_RegisterCustomModule;
null = ["Equipment", "Toggle Collision Lights", { [_this select 1] execVM "ares\ares_collisionlights.sqf" }] call Ares_fnc_RegisterCustomModule;
null = ["Util", "Respawn Time", { [_this select 1] execVM "ares\ares_respawntime.sqf" }] call Ares_fnc_RegisterCustomModule;