hint format ["欢迎来到后勤处，我这可有不少好东西——只要你的荣誉够多。"];
player addaction ["载具菜单",{
removeallactions player;
player addaction["荣誉查询",{["",0]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["轻型特战车（缴获）: 需要100荣誉",{["rhsusf_mrzr4_d",100]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["德什卡武装吉普（UAZ-3151）: 需要100荣誉",{["rhsgref_cdf_reg_uaz_dshkm",100]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["武装悍马: 需要500荣誉",{["rhsusf_m1151_m2_v1_usarmy_d",500]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["特战悍马: 需要700荣誉",{["rhsusf_m1165a1_gmv_m2_m240_socom_d",700]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M1240防雷车: 需要1000荣誉",{["rhsusf_m1240a1_m2_usarmy_d",1000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["BRDM-2(9P148): 需要1000荣誉",{["rhsgref_BRDM2_ATGM_msv",1000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M2A3布莱德利BUSK1: 需要3000荣誉",{["RHS_M2A3_BUSKI",3000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M6近程防空车: 需要2000荣誉",{["RHS_M6",2000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M1A2SEPv1（TUSK II）: 需要3000荣誉",{["rhsusf_m1a2sep1tuskiid_usarmy",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M1A2SEPv2: 需要4000荣誉",{["rhsusf_m1a2sep2d_usarmy",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["AH-64D阿帕奇武装直升机: 需要2000荣誉",{["RHS_AH64D",2000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["A-10D雷霆二式: 需要3000荣誉",{["B_Plane_CAS_01_dynamicloadout_F",3000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
// player addaction["F/A18 F: 需要400荣誉",{["JS_JC_FA18F",400]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
// player addaction["F/A18 E: 需要400荣誉",{["JS_JC_FA18E",400]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["leave",{removeallActions player}];

}]