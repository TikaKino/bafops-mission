_unit = (_this select 0);
_pack = unitBackpack _unit;

_dialogResult =
	[
		"Fill Backpack "+(str _pack),
		[
			["Type", ["Medic","Engineer","Demolitions","AA","SMAW-1","SMAW-2","INSF AT","INSF AA"]]
		]
	] call Ares_fnc_ShowChooseDialog;
	
if ((count _dialogResult) > 0) then
{
	switch (_dialogResult select 0) do
	{
		case 0: {
			_pack addItemCargoGlobal ["ACE_fieldDressing",50];
			_pack addItemCargoGlobal ["ACE_morphine",20];
			_pack addItemCargoGlobal ["ACE_epinephrine",10];
			_pack addItemCargoGlobal ["ACE_bloodIV_500",5];
		};
		case 1: {
			_pack addItemCargoGlobal ["ToolKit",1];
		};
		case 2: {
			_pack addMagazineCargoGlobal ["DemoCharge_Remote_Mag",4];
			_pack addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",2];
			_pack addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",2];
			_pack addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",2];
		};
		case 3: {
			_pack addMagazineCargoGlobal ["rhs_fim92_mag",2];
		};
		case 4: {
			_pack addMagazineCargoGlobal ["rhs_mag_smaw_HEAA",1];
			_pack addMagazineCargoGlobal ["rhs_mag_smaw_SR",1];
		};
		case 5: {
			_pack addMagazineCargoGlobal ["rhs_mag_smaw_HEAA",2];
			_pack addMagazineCargoGlobal ["rhs_mag_smaw_SR",2];
		};
		case 6: {
			_pack addMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag",2];
		};
		case 7: {
			_pack addMagazineCargoGlobal ["rhs_mag_9k38_rocket",2];
		};
	};
	
}