d_sm_fortress = "Land_Cargo_House_V2_F";
d_functionary = "C_Nikos_aged";
d_fuel_station = "Land_FuelStation_Build_F";//Land_FuelStation_Shed_F
d_sm_cargo = switch (d_enemy_side_short) do {
	case "E": {"rhs_typhoon_vdv"};
	case "W": {"rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy"};
	case "G": {"I_Truck_02_box_F"};
};
//d_sm_hangar = "Land_TentHangar_V1_F"; // Land_TentHangar_V1_F creates 3 objects and adding a killed eh makes it useless as the correct object might never get destroyed
d_sm_hangar = "Land_Hangar_F";
d_sm_tent = "Land_TentA_F";

d_sm_land_tankbig = "Land_dp_bigTank_F";
d_sm_land_transformer = "Land_dp_transformer_F";
d_sm_barracks = "Land_i_Barracks_V2_F";
d_sm_land_tanksmall = "Land_dp_smallTank_F";
d_sm_land_factory = "Land_u_Barracks_V2_F";
d_sm_small_radar = "Land_Radar_Small_F";

d_soldier_officer = switch (d_enemy_side_short) do {
	case "E": {"I_officer_F"};
	case "W": {"I_officer_F"};
	case "G": {"I_officer_F"};
};
d_sniper = switch (d_enemy_side_short) do {
	case "E": {"I_sniper_F"};
	case "W": {"I_sniper_F"};
	case "G": {"I_sniper_F"};
};
d_sm_arty = switch (d_enemy_side_short) do {
	case "E": {"B_MBT_01_arty_F"};
	case "W": {"B_MBT_01_arty_F"};
	case "G": {"B_MBT_01_arty_F"}; // no independent arty in Alpha 3
};
d_sm_plane = switch (d_enemy_side_short) do {
	case "E": {["JS_JC_SU35"]};
	case "W": {["JS_JC_SU35"]};
	case "G": {["JS_JC_SU35"]};
};
d_sm_tank = switch (d_enemy_side_short) do {
	case "E": {["HTNK_Desert","I_MBT_03_cannon_F","O_MBT_04_command_F"]};
	case "W": {["HTNK_Desert","I_MBT_03_cannon_F","O_MBT_04_command_F"]};
	case "G": {["HTNK_Desert","I_MBT_03_cannon_F","O_MBT_04_command_F"]};
};
d_sm_HunterGMG = switch (d_enemy_side_short) do {
	case "E": {"I_MRAP_03_hmg_F"};
	case "W": {"I_MRAP_03_hmg_F"};
	case "G": {"I_MRAP_03_hmg_F"};
};
d_sm_chopper = switch (d_enemy_side_short) do {
	case "E": {["RHS_Ka52_vvsc"]};
	case "W": {["RHS_Ka52_vvsc"]};
	case "G": {["RHS_Ka52_vvsc"]};
};
d_sm_pilottype = switch (d_enemy_side_short) do {
	case "E": {"I_helipilot_F"};
	case "W": {"I_helipilot_F"};
	case "G": {"I_helipilot_F"};
};
d_sm_wrecktype = switch (d_enemy_side_short) do {
	case "E": {"Land_Wreck_Heli_Attack_01_F"};
	case "W": {"Land_Wreck_Heli_Attack_02_F"};
	case "G": {"Land_Wreck_Heli_Attack_02_F"};
};
d_sm_ammotrucktype = switch (d_enemy_side_short) do {
	case "E": {"I_Truck_02_ammo_F"};
	case "W": {"I_Truck_02_ammo_F"};
	case "G": {"I_Truck_02_ammo_F"};
};
d_sm_cargotrucktype = switch (d_enemy_side_short) do {
	case "E": {["I_Truck_02_covered_F"] select (d_tanoa || {d_livonia})};
	case "W": {"I_Truck_02_covered_F"};
	case "G": {"I_Truck_02_covered_F"};
};
d_sm_fueltrucktype = switch (d_enemy_side_short) do {
	case "E": {["I_Truck_02_fuel_F"] select (d_tanoa || {d_livonia})};
	case "W": {"I_Truck_02_fuel_F"};
	case "G": {"I_Truck_02_fuel_F"};
};
d_sm_camo_net = call {
   if (d_enemy_side_short == "W") exitWith {"CamoNet_BLUFOR_big_F"};
   if (d_enemy_side_short == "E") exitWith {"CamoNet_INDP_big_F"};
   "CamoNet_INDP_big_F"
};
d_sm_medtrucktype = switch (d_enemy_side_short) do {
	case "E": {"I_Truck_02_medical_F"};
	case "W": {"I_Truck_02_medical_F"};
	case "G": {"I_Truck_02_medical_F"};
};
d_sm_deliver_truck = switch (d_enemy_side_short) do {
	case "E": {["rhsusf_M977A4_REPAIR_usarmy_d", "rhsusf_M977A4_AMMO_usarmy_d", "rhsusf_M978A4_BKIT_usarmy_d", "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy"]};
	case "W": {["RHS_Ural_Repair_VDV_01", "rhs_gaz66_ammo_vdv", "RHS_Ural_Fuel_VDV_01", "rhs_gaz66_ap2_vdv"]};
	case "G": {["I_Truck_03_repair_F", "I_Truck_03_ammo_F", "I_Truck_03_fuel_F", "I_Truck_03_medical_F"]};
};
d_sm_cache = switch (d_enemy_side_short) do {
	case "W": {["Box_Syndicate_Ammo_F", "Box_Syndicate_Wps_F", "Box_Syndicate_WpsLaunch_F"]};
	case "E": {["Box_Syndicate_Ammo_F", "Box_Syndicate_Wps_F", "Box_Syndicate_WpsLaunch_F"]};
	case "G": {["Box_Syndicate_Ammo_F", "Box_Syndicate_Wps_F", "Box_Syndicate_WpsLaunch_F"]};
};
d_sm_apc = switch (d_enemy_side_short) do {
	case "E": {"rhsgref_cdf_bmp2k"};
	case "W": {"rhsgref_cdf_bmp2k"};
	case "G": {"rhsgref_cdf_bmp2k"};
};
