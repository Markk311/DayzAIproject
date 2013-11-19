private["_aispawnpos","_wpradius","_wpnum","_numunits","_unitType","_globalFaction","_baseSkill","_potentialSkill","_gearSet","_aiunit","_aigroup","_sniperSkin","_sniperRifle","_sniperAmmo","_sniperAmmoCount","_sniperGear","_sniperWeapons","_gunnerSkin","_gunnerRifle","_gunnerAmmo","_gunnerAmmoCount","_gunnerGear","_gunnerWeapons","_militiaSkin","_militiaRifle","_militiaAmmo","_militiaAmmoCount","_militiaGear","_militiaWeapons"];
_aispawnpos =_this select 0;
_wpradius = _this select 1;
_wpnum = _this select 2;
_numunits = _this select 3;
_unitType = _this select 4;
_globalFaction = _this select 5;
_baseSkill = 10;
_potentialSkill = 10;
_gearSet = _this select 8;
respawnTime = _this select 9;
_xpos = _aispawnpos select 0;
_ypos = _aispawnpos select 1;
_skillRemainder = _potentialSkill - _baseSkill;
_aiSkills = ["aimingAccuracy","aimingShake","aimingSpeed","endurance","spotDistance","spotTime","courage","reloadSpeed","commanding","general"];
aispawnpos = _aispawnpos;
wpradius = _wpradius;
wpnum = _wpnum;
numunits = _numunits;
unitType = _unitType;
globalFaction = _globalFaction;
baseSkill = _baseSkill;
potentialSkill = _potentialSkill;
gearSet = _gearSet;
// to add more gear sets, just add another case, and copy and paste the variables from one of the other cases into it, and then reference it in the init. 
switch (_gearSet) do {
	case 0 : {
		_sniperSkin = "Sniper1_DZ";
		_sniperRifle = "SVD_CAMO";
		_sniperAmmo = "10Rnd_762x54_SVD";
		_sniperAmmoCount = 3;
		_sniperGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"];
		_sniperWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"];
		_gunnerSkin = "Bandit1_DZ";
		_gunnerRifle = "RPK_74";
		_gunnerAmmo = "75Rnd_545x39_RPK";
		_gunnerAmmoCount = 3;
		_gunnerGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"];
		_gunnerWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"];
		_militiaSkin = "Bandit1_DZ";
		_militiaRifle = "AK_74_GL";
		_militiaAmmo = "30Rnd_545x39_AK";
		_militiaAmmoCount = 3;
		_militiaGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller","1Rnd_HE_GP25","1Rnd_HE_GP25","1Rnd_SMOKERED_GP25"]; // Additional gear (does not include tools or guns)
		_militiaWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"]; //Additional Guns and Tools
	};
	case 1 : {
		_sniperSkin = "Sniper1_DZ";
		_sniperRifle = "Huntingrifle";
		_sniperAmmo = "5x_22_LR_17_HMR";
		_sniperAmmoCount = 3;
		_sniperGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"];
		_sniperWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"];
		_gunnerSkin = "Bandit1_DZ";
		_gunnerRifle = "M4SPR";
		_gunnerAmmo = "30Rnd_556x45_Stanag";
		_gunnerAmmoCount = 3;
		_gunnerGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"];
		_gunnerWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"];
		_militiaSkin = "Bandit1_DZ";
		_militiaRifle = "M16A4";
		_militiaAmmo = "30Rnd_556x45_Stanag";
		_militiaAmmoCount = 3;
		_militiaGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"]; // Additional gear (does not include tools or guns)
		_militiaWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"]; //Additional Guns and Tools
	};
	case 2 : {
		_sniperSkin = "Bandit1_DZ";
		_sniperRifle = "AK_74";
		_sniperAmmo = "30Rnd_545x39_AK";
		_sniperAmmoCount = 2;
		_sniperGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"];
		_sniperWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"];
		_gunnerSkin = "Bandit1_DZ";
		_gunnerRifle = "M4A1";
		_gunnerAmmo = "30Rnd_556x45_Stanag";
		_gunnerAmmoCount = 2;
		_gunnerGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"];
		_gunnerWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"];
		_militiaSkin = "Bandit1_DZ";
		_militiaRifle = "LeeEnfield";
		_militiaAmmo = "10x_303";
		_militiaAmmoCount = 2;
		_militiaGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"]; // Additional gear (does not include tools or guns)
		_militiaWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"]; //Additional Guns and Tools
	};
		case 3 : {
		_sniperSkin = "Sniper1_DZ";
		_sniperRifle = "M40A3";
		_sniperAmmo = "5Rnd_762x51_M24";
		_sniperAmmoCount = 3;
		_sniperGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"];
		_sniperWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"];
		_gunnerSkin = "Bandit1_DZ";
		_gunnerRifle = "Mk_48_DZ";
		_gunnerAmmo = "100Rnd_762x51_M240";
		_gunnerAmmoCount = 2;
		_gunnerGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"];
		_gunnerWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"];
		_militiaSkin = "Bandit1_DZ";
		_militiaRifle = "M16A4_ACG";
		_militiaAmmo = "30Rnd_556x45_Stanag";
		_militiaAmmoCount = 3;
		_militiaGear = ["ItemBandage","ItemBandage","17Rnd_9x19_glock17","ItemPainkiller"]; // Additional gear (does not include tools or guns)
		_militiaWeapons = ["ItemMatchbox","Binocular","ItemKnife","ItemFlashlight","glock17_EP1"]; //Additional Guns and Tools
	};
};
if (_unitType == 0) then {
	_rndLOut=floor(random 2)+1;
	_unitType = _rndLout;
};
switch (_globalFaction) do {
	case 0 : {_aigroup = createGroup resistance;};
	case 1 : {_aigroup = createGroup east;};
	case 2 : {_aigroup = createGroup west;};
};

diag_log format["globalFaction is %1",globalFaction];
for [{ x=1 },{ x < _numunits+1 },{ x = x + 1; }] do {
	_unitpos = [_xpos+x,_ypos+x,0];
	switch (_unitType) do {
		case 1 : {
			_ailoadout=[_sniperRifle,_sniperAmmo];
			_sniperSkin createUnit [_unitpos, _aigroup, "_aiunit=this;",1,"Private"];
			_aiunit enableAI "TARGET";
			_aiunit enableAI "AUTOTARGET";
			_aiunit enableAI "MOVE";
			_aiunit enableAI "ANIM";
			_aiunit enableAI "FSM";
			_aiunit allowDammage true;
			_aiunit setCombatMode "RED";
			_aiunit setBehaviour "COMBAT";
			//clear default weapons / ammo
			removeAllWeapons _aiunit;
			removeAllItems _aiunit;
			//add weapon
			_aiwep = _ailoadout select 0;
			_aiammo = _ailoadout select 1;
			_aiunit addMagazine _aiammo;
			_aiunit addweapon _aiwep;
			//add mags
			for [{z = 0},{z < _sniperAmmoCount},{z = z + 1}] do {
				_aiunit addMagazine _aiammo;
			};
			//add gear
			_gearCount = count _sniperGear;									
			for [{z = 0},{z < _gearCount},{z = z + 1}] do {
				_currentItem = _sniperGear select z;
				_aiunit addMagazine _currentItem;
			}; 
			//add weapons and tools
			_weaponCount = count _sniperWeapons;
			for [{z = 0},{z < _weaponCount},{z = z + 1}] do {
				_currentItem = _sniperWeapons select z;
				_aiunit addWeapon _currentItem;
			}; 				
			//set skills
			for [{z = 0},{z < 10},{z = z + 1}] do {
				_totalSkill = (floor(random _skillRemainder)+_baseSkill)/10;
				_aiunit setSkill [_aiSkills select z,_totalSkill];
			};						
		};
		case 2 : {
			_ailoadout=[_gunnerRifle,_gunnerAmmo];
			_gunnerSkin createUnit [_unitpos, _aigroup, "_aiunit=this;",1,"Private"];
			_aiunit enableAI "TARGET";
			_aiunit enableAI "AUTOTARGET";
			_aiunit enableAI "MOVE";
			_aiunit enableAI "ANIM";
			_aiunit enableAI "FSM";
			_aiunit allowDammage true;
			_aiunit setCombatMode "RED";
			_aiunit setBehaviour "COMBAT";
			//clear default weapons / ammo
			removeAllWeapons _aiunit;
			removeAllItems _aiunit;
			//add weapon
			_aiwep = _ailoadout select 0;
			_aiammo = _ailoadout select 1;
			_aiunit addMagazine _aiammo;
			_aiunit addweapon _aiwep;
			//add mags
			for [{z = 0},{z < _gunnerAmmoCount},{z = z + 1}] do {
				_aiunit addMagazine _aiammo;
			};
			//add gear
			_gearCount = count _gunnerGear;									
			for [{z = 0},{z < _gearCount},{z = z + 1}] do {
				_currentItem = _gunnerGear select z;
				_aiunit addMagazine _currentItem;
			}; 
			//add weapons and tools
			_weaponCount = count _gunnerWeapons;
			for [{z = 0},{z < _weaponCount},{z = z + 1}] do {
				_currentItem = _gunnerWeapons select z;
				_aiunit addWeapon _currentItem;
			}; 				 
			//set skills
			for [{z = 0},{z < 10},{z = z + 1}] do {
				_totalSkill = (floor(random _skillRemainder)+_baseSkill)/10;
				_aiunit setSkill [_aiSkills select z,_totalSkill];
			};						
		};
		case 3 : {
			_ailoadout=[_militiaRifle,_militiaAmmo];
			_militiaSkin createUnit [_unitpos, _aigroup, "_aiunit=this;",1,"Private"];
			_aiunit enableAI "TARGET";
			_aiunit enableAI "AUTOTARGET";
			_aiunit enableAI "MOVE";
			_aiunit enableAI "ANIM";
			_aiunit enableAI "FSM";
			_aiunit allowDammage true;
			_aiunit setCombatMode "RED";
			_aiunit setBehaviour "COMBAT";
			//clear default weapons / ammo
			removeAllWeapons _aiunit;
			removeAllItems _aiunit;
			//add weapon
			_aiwep = _ailoadout select 0;
			_aiammo = _ailoadout select 1;
			_aiunit addMagazine _aiammo;
			_aiunit addweapon _aiwep;
			//add mags
			for [{z = 0},{z < _militiaAmmoCount},{z = z + 1}] do {
				_aiunit addMagazine _aiammo;
			};
			//add gear
			_gearCount = count _militiaGear;									
			for [{z = 0},{z < _gearCount},{z = z + 1}] do {
				_currentItem = _militiaGear select z;
				_aiunit addMagazine _currentItem;
			}; 
			//add weapons and tools
			_weaponCount = count _militiaWeapons;
			for [{z = 0},{z < _weaponCount},{z = z + 1}] do {
				_currentItem = _militiaWeapons select z;
				_aiunit addWeapon _currentItem;
			}; 				 
			//set skills
			for [{z = 0},{z < 10},{z = z + 1}] do {
				_totalSkill = (floor(random _skillRemainder)+_baseSkill)/10;
				_aiunit setSkill [_aiSkills select z,_totalSkill];
			};		
		};
		case 4 : {
			for [{y=1},{y<=3},{y=y+1}] do {
				switch (y) do {
					case 1 : {
						_ailoadout=[_sniperRifle,_sniperAmmo];
						_sniperSkin createUnit [_unitpos, _aigroup, "_aiunit=this;",1,"Private"];
						_aiunit enableAI "TARGET";
						_aiunit enableAI "AUTOTARGET";
						_aiunit enableAI "MOVE";
						_aiunit enableAI "ANIM";
						_aiunit enableAI "FSM";
						_aiunit allowDammage true;
						_aiunit setCombatMode "RED";
						_aiunit setBehaviour "COMBAT";
						//clear default weapons / ammo
						removeAllWeapons _aiunit;
						removeAllItems _aiunit;
						//add weapon
						_aiwep = _ailoadout select 0;
						_aiammo = _ailoadout select 1;
						_aiunit addMagazine _aiammo;
						_aiunit addweapon _aiwep;
						//add mags
						for [{z = 0},{z < _sniperAmmoCount},{z = z + 1}] do {
							_aiunit addMagazine _aiammo;
						};
						//add gear
						_gearCount = count _sniperGear;									
						for [{z = 0},{z < _gearCount},{z = z + 1}] do {
							_currentItem = _sniperGear select z;
							_aiunit addMagazine _currentItem;
						}; 
						//add weapons and tools
						_weaponCount = count _sniperWeapons;
						for [{z = 0},{z < _weaponCount},{z = z + 1}] do {
							_currentItem = _sniperWeapons select z;
							_aiunit addWeapon _currentItem;
						}; 				 
						//set skills
						for [{z = 0},{z < 10},{z = z + 1}] do {
							_totalSkill = (floor(random _skillRemainder)+_baseSkill)/10;
							_aiunit setSkill [_aiSkills select z,_totalSkill];
						};			
					};
					case 2 : {
						_ailoadout=[_gunnerRifle,_gunnerAmmo];
						_gunnerSkin createUnit [_unitpos, _aigroup, "_aiunit=this;",1,"Private"];
						_aiunit enableAI "TARGET";
						_aiunit enableAI "AUTOTARGET";
						_aiunit enableAI "MOVE";
						_aiunit enableAI "ANIM";
						_aiunit enableAI "FSM";
						_aiunit allowDammage true;
						_aiunit setCombatMode "RED";
						_aiunit setBehaviour "COMBAT";
						//clear default weapons / ammo
						removeAllWeapons _aiunit;
						removeAllItems _aiunit;
						//add weapon
						_aiwep = _ailoadout select 0;
						_aiammo = _ailoadout select 1;
						_aiunit addMagazine _aiammo;
						_aiunit addweapon _aiwep;
						//add mags
						for [{z = 0},{z < _gunnerAmmoCount},{z = z + 1}] do {
							_aiunit addMagazine _aiammo;
						};
						//add gear
						_gearCount = count _gunnerGear;									
						for [{z = 0},{z < _gearCount},{z = z + 1}] do {
							_currentItem = _gunnerGear select z;
							_aiunit addMagazine _currentItem;
						}; 
						//add weapons and tools
						_weaponCount = count _gunnerWeapons;
						for [{z = 0},{z < _weaponCount},{z = z + 1}] do {
							_currentItem = _gunnerWeapons select z;
							_aiunit addWeapon _currentItem;
						}; 				 
						//set skills
						for [{z = 0},{z < 10},{z = z + 1}] do {
							_totalSkill = (floor(random _skillRemainder)+_baseSkill)/10;
							_aiunit setSkill [_aiSkills select z,_totalSkill];
						};				
					};
					case 3 : {
						_ailoadout=[_militiaRifle,_militiaAmmo];
						_militiaSkin createUnit [_unitpos, _aigroup, "_aiunit=this;",1,"Private"];
						_aiunit enableAI "TARGET";
						_aiunit enableAI "AUTOTARGET";
						_aiunit enableAI "MOVE";
						_aiunit enableAI "ANIM";
						_aiunit enableAI "FSM";
						_aiunit allowDammage true;
						_aiunit setCombatMode "RED";
						_aiunit setBehaviour "COMBAT";
						//clear default weapons / ammo
						removeAllWeapons _aiunit;
						removeAllItems _aiunit;
						//add weapon
						_aiwep = _ailoadout select 0;
						_aiammo = _ailoadout select 1;
						_aiunit addMagazine _aiammo;
						_aiunit addweapon _aiwep;
						//add mags
						for [{z = 0},{z < _militiaAmmoCount},{z = z + 1}] do {
							_aiunit addMagazine _aiammo;
						};
						//add gear
						_gearCount = count _militiaGear;									
						for [{z = 0},{z < _gearCount},{z = z + 1}] do {
							_currentItem = _militiaGear select z;
							_aiunit addMagazine _currentItem;
						}; 
						//add weapons and tools
						_weaponCount = count _militiaWeapons;
						for [{z = 0},{z < _weaponCount},{z = z + 1}] do {
							_currentItem = _militiaWeapons select z;
							_aiunit addWeapon _currentItem;
						}; 		
						//set skills
						for [{z = 0},{z < 10},{z = z + 1}] do {
							_totalSkill = (floor(random _skillRemainder)+_baseSkill)/10;
							_aiunit setSkill [_aiSkills select z,_totalSkill];
							
						};
					};					
				};
			};
		};
	};
} ;

//generate waypoints
for [{ x=1 },{ x < _wpnum },{ x = x + 1; }] do {
	_wppos = [_xpos+(x*20),_ypos+(x*20),_wpradius];
	_wp = _aigroup addWaypoint [_wppos, _wpradius];
	_wp setWaypointType "MOVE";
};
_wp = _aigroup addWaypoint [[_xpos,_ypos,0], _wpradius];
_wp setWaypointType "CYCLE";