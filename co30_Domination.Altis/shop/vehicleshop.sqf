hint format ["欢迎来到后勤处，我这可有不少好东西——只要你的荣誉够多。"];
player addaction ["载具菜单",{
removeallactions player;
player addaction["荣誉查询",{["",0]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["轻型特战车（缴获）: 需要100荣誉",{["rhsusf_mrzr4_d",100]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["德什卡武装吉普（UAZ-3151）: 需要100荣誉",{["rhsgref_cdf_reg_uaz_dshkm",100]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["武装悍马: 需要500荣誉",{["rhsusf_m1151_m2_v1_usarmy_d",500]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["特战悍马: 需要700荣誉",{["rhsusf_m1165a1_gmv_m2_m240_socom_d",700]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M1240防雷车: 需要1000荣誉",{["rhsusf_m1240a1_m2_usarmy_d",1000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["2S3M1自行火炮: 需要10000荣誉",{["rhs_2s3_tv",10000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M109自行火炮: 需要10000荣誉",{["rhsusf_m109d_usarmy",10000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M2A3布莱德利BUSK1: 需要3000荣誉",{["RHS_M2A3_BUSKI",3000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
// player addaction["M6近程防空车: 需要2000荣誉",{["RHS_M6",2000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
// player addaction["M1A2SEPv1（TUSK II）: 需要3000荣誉",{["rhsusf_m1a2sep1tuskiid_usarmy",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
// player addaction["M1A2SEPv2: 需要4000荣誉",{["rhsusf_m1a2sep2d_usarmy",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["M1129机动迫击炮: 需要5000荣誉",{["M1129_MC_DG1_NOSLATDES",5000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["T140K主战坦克: 需要5000荣誉",{["O_MBT_04_command_F",5000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["MI24P: 需要1000荣誉",{["RHS_Mi24P_vdv",1000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["MI28N: 需要2000荣誉",{["rhs_mi28n_vvsc",2000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["Ka52: 需要2000荣誉",{["RHS_Ka52_vvsc",2000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["AH1Z: 需要2000荣誉",{["RHS_AH1Z",2000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["AH-64D阿帕奇武装直升机: 需要3000荣誉",{["RHS_AH64D",3000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["沈阳歼15-原型机: 需要4000荣誉",{["Su33_Chine_PT",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["沈阳歼15-飞鲨: 需要4000荣誉",{["Su33_Chine",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["苏33舰载机: 需要4000荣誉",{["Su33_Protatype_PT_2",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
// player addaction["A-10D雷霆二式: 需要3000荣誉",{["B_Plane_CAS_01_dynamicloadout_F",3000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["T50-generic: 需要3000荣誉",{["RHS_T50_vvs_generic_ext",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["T50-055: 需要3000荣誉",{["RHS_T50_vvs_blueonblue",4000]execvm "moneysystem\recrutesystem\buyvehicle .sqf";}];
player addaction["leave",{removeallActions player}];

}]