if (isNil "Ares_Reinforcement_Mission_Unit_Pools") then
{
	Ares_Reinforcement_Mission_Unit_Pools = [];
};

Ares_Reinforcement_Mission_Unit_Pools pushBack
	[
		"African Governatives", // Name of the faction
		resistance, // The side of the faction
		"", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
		["I_mas_afr_Offroad_01_F", "I_mas_afr_MRAP_03_F"], // Scouts and unarmed light vehicles
		["I_mas_afr_Offroad_01_armed_F","I_mas_afr_MRAP_03_hmg_F"], // Armed light vehicles
		["I_mas_afr_Truck_02_transport_F"], // Dedicated troop trucks
		["I_mas_afr_BTR60"], // Armed + Armored Troop Transports
		["I_mas_afr_MI8"], // Unarmed helicopters
		["I_mas_afr_MI8MTV"], // Armed helicopters
		["I_mas_afr_Boat_Transport_01_F"], // Unarmed boats
		["I_mas_afr_Boat_Transport_01_F"], // Armed boats
		[
			// Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
			["I_mas_afr_Soldier_TL_F", "I_mas_afr_Soldier_F", "I_mas_afr_soldier_AR_F", "I_mas_afr_Soldier_GL_F", "I_mas_afr_Soldier_F"],
			["I_mas_afr_Soldier_SL_F", "I_mas_afr_Soldier_F", "I_mas_afr_Soldier_lite_F", "I_mas_afr_soldier_LAT_F", "I_mas_afr_Soldier_F"]
		]
	];
	
Ares_Reinforcement_Mission_Unit_Pools pushBack
	[
		"African Governatives (SF)", // Name of the faction
		resistance, // The side of the faction
		"", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
		["I_mas_afr_Offroad_01s_F"], // Scouts and unarmed light vehicles
		["I_mas_afr_Offroad_01s_armed_F"], // Armed light vehicles
		["I_mas_afr_Truck_02_transport_F"], // Dedicated troop trucks
		["I_mas_afr_BTR60"], // Armed + Armored Troop Transports
		["I_mas_afr_MI8"], // Unarmed helicopters
		["I_mas_afr_MI8MTV"], // Armed helicopters
		["I_mas_afr_Boat_Transport_01_F"], // Unarmed boats
		["I_mas_afr_Boat_Transport_01_F"], // Armed boats
		[
			// Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
			["I_mas_afr_recon_TL_F", "I_mas_afr_recon_F", "I_mas_afr_recon_AR_F", "I_mas_afr_recon_medic_F", "I_mas_afr_recon_F"],
			["I_mas_afr_recon_TL_F", "I_mas_afr_recon_F", "I_mas_afr_recon_M_F", "I_mas_afr_recon_LAT_F", "I_mas_afr_recon_F"]
		]
	];
	
Ares_Reinforcement_Mission_Unit_Pools pushBack
	[
		"African Insurgents", // Name of the faction
		east, // The side of the faction
		"", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
		["O_mas_afr_Offroad_01c_F"], // Scouts and unarmed light vehicles
		["O_mas_afr_Offroad_01c_armed_F"], // Armed light vehicles
		["C_mas_afr_Truck_02_transport_F"], // Dedicated troop trucks
		[], // Armed + Armored Troop Transports
		[], // Unarmed helicopters
		[], // Armed helicopters
		[], // Unarmed boats
		[], // Armed boats
		[
			// Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
			["O_mas_afr_Rebel8a_F", "O_mas_afr_Rebel1a_F", "O_mas_afr_Rebel5_F", "O_mas_afr_Rebel1_F", "O_mas_afr_Rebel1_F"],
			["O_mas_afr_Rebel4_F", "O_mas_afr_Rebel1_F", "O_mas_afr_Rebel6_F", "O_mas_afr_Rebel1_F", "O_mas_afr_Rebel1_F"],
			["O_mas_afr_Rebel3_F", "O_mas_afr_Rebel1a_F", "O_mas_afr_Rebel6_F", "O_mas_afr_Rebel1_F", "O_mas_afr_Rebel1_F"],
			["O_mas_afr_Rebel1_F", "O_mas_afr_Rebel6_F", "O_mas_afr_Rebel6_F", "O_mas_afr_Rebel1a_F", "O_mas_afr_Rebel1_F"]
		]
	];