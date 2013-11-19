if(!isServer) exitwith {};
diag_log["BanditCamps Started"];

_Base = [["M9","15Rnd_9x19_M9"], ["AKS_74_UN_kobra","30Rnd_545x39_AKSD"], ["M4A3_CCO_EP1","30Rnd_556x45_Stanag"], ["M4A1_AIM_SD_camo","30Rnd_556x45_StanagSD"], ["M16A4","30Rnd_556x45_Stanag"], ["m8_carbine","30Rnd_556x45_Stanag"], ["BAF_L85A2_RIS_Holo","30Rnd_556x45_Stanag"], ["Sa58V_CCO_EP1","30Rnd_762x39_AK47"]];
_Scoped = [["AK_107_pso","30Rnd_545x39_AK"], ["M16A4_ACG","30Rnd_556x45_Stanag"], ["Sa58V_RCO_EP1","30Rnd_762x39_AK47"], ["SCAR_L_STD_Mk4CQT","30Rnd_556x45_Stanag"], ["BAF_L86A2_ACOG","30Rnd_556x45_Stanag"], ["M4A1_AIM_SD_camo","30Rnd_556x45_StanagSD"], ["M14_EP1","20Rnd_762x51_DMR"], ["M8_sharpshooter","30Rnd_556x45_Stanag"]];
_Underbarrel = [["AK_107_GL_pso","30Rnd_545x39_AK"], ["AK_107_GL_kobra","30Rnd_545x39_AK"], ["M4A1_HWS_GL","30Rnd_556x45_Stanag"], ["M16A4_ACG_GL","30Rnd_556x45_Stanag"], ["M8_carbineGL","30Rnd_556x45_Stanag"], ["SCAR_L_STD_EGLM_RCO","30Rnd_556x45_Stanag"], ["BAF_L85A2_UGL_Holo","30Rnd_556x45_Stanag"], ["M4A3_RCO_GL_EP1","30Rnd_556x45_Stanag"]];
_Sniper = [["KSVK","5Rnd_127x108_KSVK"], ["SCAR_H_STD_EGLM_Spect","20rnd_762x51_B_SCAR"], ["M110_NVG_EP1","20rnd_762x51_B_SCAR"], ["SCAR_H_LNG_Sniper_SD","20rnd_762x51_SB_SCAR"], ["SVD_CAMO","10Rnd_762x54_SVD"], ["VSS_Vintorez","20Rnd_9x39_SP5_VSS"], ["BAF_LRR_scoped","5Rnd_86x70_L115A1"], ["DMR","20Rnd_762x51_DMR"], ["M40A3","5Rnd_762x51_M24"]];
_LMG = [["RPK_74","75Rnd_545x39_RPK"], ["MK_48_DZ","100Rnd_762x51_M240"], ["M249_DZ","200Rnd_556x45_M249"], ["Pecheneg_DZ","100Rnd_762x54_PK"], ["M240_DZ","100Rnd_762x51_M240"]];
//Spawn Boxes skanky
_wbox1 = createVehicle ["MedBox0",[13695.192, 2929.1919, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
_wbox2 = createVehicle ["FoodBox1",[13694.472, 2931.1643, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
_wbox3 = createVehicle ["BAF_VehicleBox",[13693.258, 2933.657, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
_wbox4 = createVehicle ["RUOrdnanceBox",[13696.184, 2926.9407, -1.9073486e-005], [], 0, "CAN_COLLIDE"];
//Spawn boxes pavlovo
_pwbox1 = createVehicle ["MedBox0",[936.39606, 4501.7949, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
_pwbox2 = createVehicle ["FoodBox1",[935.40436, 4502.5664, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
_pwbox3 = createVehicle ["BAF_VehicleBox",[932.71082, 4507.2783, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
_pwbox4 = createVehicle ["RUOrdnanceBox",[937.82764, 4503.6851, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
//Clear ammo boxes
clearWeaponCargoGlobal _wbox3;
clearMagazineCargoGlobal _wbox3;
clearBackpackCargoGlobal _wbox3;
clearWeaponCargoGlobal _wbox4;
clearMagazineCargoGlobal _wbox4;
clearBackpackCargoGlobal _wbox4;
//wp boxes
clearWeaponCargoGlobal _pwbox3;
clearMagazineCargoGlobal _pwbox3;
clearBackpackCargoGlobal _pwbox3;
clearWeaponCargoGlobal _pwbox4;
clearMagazineCargoGlobal _pwbox4;
clearBackpackCargoGlobal _pwbox4;

//Set Loot skanky
_Baseloot = _Base call BIS_fnc_selectRandom;
_Baseloot2 = _Base call BIS_fnc_selectRandom;
_Baseloot3 = _Base call BIS_fnc_selectRandom;
_ScopedLoot = _Scoped call BIS_fnc_selectRandom;
_ScopedLoot2 = _Scoped call BIS_fnc_selectRandom;
_UnderbarrelLoot = _Underbarrel call BIS_fnc_selectRandom;
_SniperLoot = _Sniper call BIS_fnc_selectRandom;
_SniperLoot2 = _Sniper call BIS_fnc_selectRandom;
_LMGLoot = _LMG call BIS_fnc_selectRandom;
_LMGLoot2 = _LMG call BIS_fnc_selectRandom;
//WP loot
_pBaseloot = _Base call BIS_fnc_selectRandom;
_pBaseloot2 = _Base call BIS_fnc_selectRandom;
_pBaseloot3 = _Base call BIS_fnc_selectRandom;
_pScopedLoot = _Scoped call BIS_fnc_selectRandom;
_pScopedLoot2 = _Scoped call BIS_fnc_selectRandom;
_pUnderbarrelLoot = _Underbarrel call BIS_fnc_selectRandom;
_pUnderbarrelLoot2 = _Underbarrel call BIS_fnc_selectRandom;
_pSniperLoot = _Sniper call BIS_fnc_selectRandom;
_pLMGLoot = _LMG call BIS_fnc_selectRandom;
//Spawn weapons Skanky
_wbox4 addWeaponCargoGlobal [_Baseloot select 0, 2];
_wbox4 addWeaponCargoGlobal [_Baseloot2 select 0, 2];
_wbox4 addWeaponCargoGlobal [_Baseloot3 select 0, 2];
_wbox3 addWeaponCargoGlobal [_ScopedLoot select 0, 2];
_wbox3 addWeaponCargoGlobal [_ScopedLoot2 select 0, 2];
_wbox3 addWeaponCargoGlobal [_UnderbarrelLoot select 0, 2];
_wbox3 addWeaponCargoGlobal [_SniperLoot select 0, 1];
_wbox3 addWeaponCargoGlobal [_SniperLoot2 select 0, 1];
_wbox3 addWeaponCargoGlobal [_LMGLoot select 0, 1];
_wbox3 addWeaponCargoGlobal [_LMGLoot2 select 0, 1];
//Spawn weapons WP
_pwbox4 addWeaponCargoGlobal [_pBaseloot select 0, 2];
_pwbox4 addWeaponCargoGlobal [_pBaseloot2 select 0, 2];
_pwbox4 addWeaponCargoGlobal [_pBaseloot3 select 0, 2];
_pwbox3 addWeaponCargoGlobal [_pScopedLoot select 0, 2];
_pwbox3 addWeaponCargoGlobal [_pScopedLoot2 select 0, 2];
_pwbox3 addWeaponCargoGlobal [_pUnderbarrelLoot select 0, 1];
_pwbox3 addWeaponCargoGlobal [_pUnderbarrelLoot2 select 0, 1];
_pwbox3 addWeaponCargoGlobal [_pSniperLoot select 0, 1];
_pwbox3 addWeaponCargoGlobal [_pLMGLoot select 0, 1];
//Spawn Mags skanky
_wbox4 addMagazineCargoGlobal [_Baseloot select 1, 2];
_wbox4 addMagazineCargoGlobal [_Baseloot2 select 1, 2];
_wbox4 addMagazineCargoGlobal [_Baseloot3 select 1, 2];
_wbox3 addMagazineCargoGlobal [_ScopedLoot select 1, 2];
_wbox3 addMagazineCargoGlobal [_ScopedLoot2 select 1, 2];
_wbox3 addMagazineCargoGlobal [_UnderbarrelLoot select 1, 2];
_wbox3 addMagazineCargoGlobal [_SniperLoot select 1, 2];
_wbox3 addMagazineCargoGlobal [_SniperLoot2 select 1, 2];
_wbox3 addMagazineCargoGlobal [_LMGLoot select 1, 2];
_wbox3 addMagazineCargoGlobal [_LMGLoot2 select 1, 2];
//Spawn Mags WP
_pwbox4 addMagazineCargoGlobal [_pBaseloot select 1, 2];
_pwbox4 addMagazineCargoGlobal [_pBaseloot2 select 1, 2];
_pwbox4 addMagazineCargoGlobal [_pBaseloot3 select 1, 2];
_pwbox3 addMagazineCargoGlobal [_pScopedLoot select 1, 2];
_pwbox3 addMagazineCargoGlobal [_pScopedLoot2 select 1, 2];
_pwbox3 addMagazineCargoGlobal [_pUnderbarrelLoot select 1, 2];
_pwbox3 addMagazineCargoGlobal [_pUnderbarrelLoot2 select 1, 2];
_pwbox3 addMagazineCargoGlobal [_pSniperLoot select 1, 2];
_pwbox3 addMagazineCargoGlobal [_pLMGLoot select 1, 2];
//Add HE skanky
_wbox3 addMagazineCargoGlobal ["1Rnd_HE_M203", 2];
_wbox3 addMagazineCargoGlobal ["1Rnd_HE_GP25", 2];
//Add HE
_pwbox3 addMagazineCargoGlobal ["1Rnd_HE_M203", 2];
_pwbox3 addMagazineCargoGlobal ["1Rnd_HE_GP25", 2];
// Ai Turret
execVM "\z\addons\dayz_server\compile\AI\Turrets.sqf";

diag_log["BanditCamps Spawning Complete"];
