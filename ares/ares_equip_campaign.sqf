_unit = (_this select 0);
_uniform = uniformContainer _unit;
_pack = backpackContainer _unit;
_vest = vestContainer _unit;

_dialogResult =
	[
		"Campaign Equip for "+(name _unit),
		[
			["Loadout", ["Magnus","Mark","psychonix","Sam","Tom"]]
		]
	] call Ares_fnc_ShowChooseDialog;

if ((count _dialogResult) > 0) then { switch (_dialogResult select 0) do
{
	case 0: {
		[_unit] remoteExec ["removeAllWeapons",_unit];
		clearWeaponCargoGlobal _pack;
		clearMagazineCargoGlobal _pack;
		clearItemCargoGlobal _pack;
		clearBackpackCargoGlobal _pack;
		clearWeaponCargoGlobal _vest;
		clearMagazineCargoGlobal _vest;
		clearItemCargoGlobal _vest;
		clearBackpackCargoGlobal _vest;
		clearWeaponCargoGlobal _uniform;
		clearMagazineCargoGlobal _uniform;
		clearItemCargoGlobal _uniform;
		clearBackpackCargoGlobal _uniform;
		
		_vest addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",3];
		_vest addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",2];
		_vest addMagazineCargoGlobal ["HandGrenade",5];
		_vest addMagazineCargoGlobal ["B_IR_Grenade",2];
		
		_pack addMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag",2];
		_pack addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_HEDP_Grenade_shell",8];
		_pack addMagazineCargoGlobal ["Chemlight_green",1];
		_pack addMagazineCargoGlobal ["Chemlight_red",1];
		
		[_unit,"TIKA_rifle_L85A2_UGL_M552CCO"] remoteExec ["addWeapon",_unit];
		[_unit,"UK3CB_BAF_L131A1"] remoteExec ["addWeapon",_unit];
		[_unit,"Rangefinder"] remoteExec ["addWeapon",_unit];
		[_unit,"rhs_weap_rpg7"] remoteExec ["addWeapon",_unit];
		
		_uniform addItemCargoGlobal ["ACE_FieldDressing",5];
		_uniform addItemCargoGlobal ["ACE_morphine",2];
		_uniform addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
		
	};
	case 1: {
		[_unit] remoteExec ["removeAllWeapons",_unit];
		clearWeaponCargoGlobal _pack;
		clearMagazineCargoGlobal _pack;
		clearItemCargoGlobal _pack;
		clearBackpackCargoGlobal _pack;
		clearWeaponCargoGlobal _vest;
		clearMagazineCargoGlobal _vest;
		clearItemCargoGlobal _vest;
		clearBackpackCargoGlobal _vest;
		clearWeaponCargoGlobal _uniform;
		clearMagazineCargoGlobal _uniform;
		clearItemCargoGlobal _uniform;
		clearBackpackCargoGlobal _uniform;
		
		_vest addMagazineCargoGlobal ["UK3CB_BAF_20Rnd",4];
		_vest addMagazineCargoGlobal ["UK3CB_BAF_20Rnd_T",1];
		_vest addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",2];
		_vest addMagazineCargoGlobal ["SmokeShell",2];
		_vest addMagazineCargoGlobal ["Chemlight_green",1];
		_vest addMagazineCargoGlobal ["Chemlight_red",1];
		
		_uniform addItemCargoGlobal ["ACE_FieldDressing",5];
		_uniform addItemCargoGlobal ["ACE_morphine",2];
		_uniform addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
		
		_pack addMagazineCargoGlobal ["rhs_rpg7_PG7VR_mag",3];
		
		[_unit,"TIKA_rifle_L129A1_RCO"] remoteExec ["addWeapon",_unit];
		[_unit,"UK3CB_BAF_L131A1"] remoteExec ["addWeapon",_unit];
		[_unit,"Rangefinder"] remoteExec ["addWeapon",_unit];
		[_unit,"rhs_weap_rpg7"] remoteExec ["addWeapon",_unit];
	};
	case 2: {
		[_unit] remoteExec ["removeAllWeapons",_unit];
		clearWeaponCargoGlobal _pack;
		clearMagazineCargoGlobal _pack;
		clearItemCargoGlobal _pack;
		clearBackpackCargoGlobal _pack;
		clearWeaponCargoGlobal _vest;
		clearMagazineCargoGlobal _vest;
		clearItemCargoGlobal _vest;
		clearBackpackCargoGlobal _vest;
		clearWeaponCargoGlobal _uniform;
		clearMagazineCargoGlobal _uniform;
		clearItemCargoGlobal _uniform;
		clearBackpackCargoGlobal _uniform;
		
		_vest addMagazineCargoGlobal ["UK3CB_BAF_100Rnd_T",1];
		_vest addMagazineCargoGlobal ["UK3CB_BAF_200Rnd_T",1];
		_vest addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",2];
		_vest addMagazineCargoGlobal ["SmokeShell",1];
		_vest addMagazineCargoGlobal ["Chemlight_red",1];
		
		_uniform addItemCargoGlobal ["ACE_FieldDressing",5];
		_uniform addItemCargoGlobal ["ACE_morphine",2];
		_uniform addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
		
		_pack addMagazineCargoGlobal ["rhs_rpg7_PG7VR_mag",1];
		_pack addMagazineCargoGlobal ["rhs_rpg7_TBG7V_mag",1];
		
		[_unit,"TIKA_lmg_L110A2_RCO"] remoteExec ["addWeapon",_unit];
		[_unit,"UK3CB_BAF_L131A1"] remoteExec ["addWeapon",_unit];
		[_unit,"rhs_weap_rpg7"] remoteExec ["addWeapon",_unit];
	};
	case 3: {
		[_unit] remoteExec ["removeAllWeapons",_unit];
		clearWeaponCargoGlobal _pack;
		clearMagazineCargoGlobal _pack;
		clearItemCargoGlobal _pack;
		clearBackpackCargoGlobal _pack;
		clearWeaponCargoGlobal _vest;
		clearMagazineCargoGlobal _vest;
		clearItemCargoGlobal _vest;
		clearBackpackCargoGlobal _vest;
		clearWeaponCargoGlobal _uniform;
		clearMagazineCargoGlobal _uniform;
		clearItemCargoGlobal _uniform;
		clearBackpackCargoGlobal _uniform;
		
		_vest addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",4];
		_vest addItemCargoGlobal ["acc_mas_pointer_gun_IR",1];
		_vest addMagazineCargoGlobal ["HandGrenade",4];
		_vest addMagazineCargoGlobal ["SmokeShell",2];
		_vest addMagazineCargoGlobal ["SmokeShellYellow",4];
		_vest addMagazineCargoGlobal ["Chemlight_red",2];
		_vest addMagazineCargoGlobal ["Chemlight_green",2];
		_vest addMagazineCargoGlobal ["Chemlight_yellow",2];
		
		_uniform addMagazineCargoGlobal ["17Rnd_mas_9x21_Mag",3];
		_uniform addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
		
		_pack addItemCargoGlobal ["ACE_FieldDressing",50];
		_pack addItemCargoGlobal ["ACE_morphine",10];
		_pack addItemCargoGlobal ["ACE_epinephrine",10];
		_pack addItemCargoGlobal ["ACE_bloodIV_500",2];
		
		[_unit,"TIKA_rifle_L85A2_M552CCO"] remoteExec ["addWeapon",_unit];
		[_unit,"hgun_mas_grach_F_sd"] remoteExec ["addWeapon",_unit];
	};
	case 4: {
		[_unit] remoteExec ["removeAllWeapons",_unit];
		clearWeaponCargoGlobal _pack;
		clearMagazineCargoGlobal _pack;
		clearItemCargoGlobal _pack;
		clearBackpackCargoGlobal _pack;
		clearWeaponCargoGlobal _vest;
		clearMagazineCargoGlobal _vest;
		clearItemCargoGlobal _vest;
		clearBackpackCargoGlobal _vest;
		clearWeaponCargoGlobal _uniform;
		clearMagazineCargoGlobal _uniform;
		clearItemCargoGlobal _uniform;
		clearBackpackCargoGlobal _uniform;
		
		_vest addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",4];
		_vest addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",2];
		_vest addMagazineCargoGlobal ["SmokeShell",2];
		
		_uniform addItemCargoGlobal ["ACE_IR_Strobe_Item",1];
		_uniform addMagazineCargoGlobal ["Chemlight_green",1];
		_uniform addMagazineCargoGlobal ["Chemlight_red",1];
		
		[_unit,"TIKA_rifle_L85A2_M552CCO"] remoteExec ["addWeapon",_unit];
		[_unit,"UK3CB_BAF_L131A1"] remoteExec ["addWeapon",_unit];
		[_unit,"UK3CB_BAF_Javelin_CLU"] remoteExec ["addWeapon",_unit];
		[_unit,"UK3CB_BAF_Javelin_Slung_Tube"] remoteExec ["addWeapon",_unit];
	};
};};