if(!isServer) exitWith {};
waitUntil{initialized};

createCenter east;

_unitGroup = createGroup east;

if (true) then
{
  _this = createVehicle ["M2StaticMG", [911.21545,4532.7612], [], 0, "CAN_COLLIDE"];
  _this setDir 22.117805;
  _this setPos [911.21545,4532.7612,2.6292224];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
  };

if (true) then
{
  _this = createVehicle ["M2StaticMG", [13680.985, 2958.7622, 8.8380222], [], 0, "CAN_COLLIDE"];
  _this setDir -51.378216;
  _this setPos [13680.985, 2958.7622, 8.8380222];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
};

if (true) then
{
  _this = createVehicle ["M2StaticMG", [13700.848, 2891.2732, 12.741931], [], 0, "CAN_COLLIDE"];
  _this setPos [13700.848, 2891.2732, 12.741931];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
};

if (true) then
{
  _this = createVehicle ["M2StaticMG", [13719.417, 2882.5188, 2.700685], [], 0, "CAN_COLLIDE"];
  _this setDir 136.44716;
  _this setPos [13719.417, 2882.5188, 2.700685];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
};

if (true) then
{
  _this = createVehicle ["M2StaticMG", [13678.152, 2903.9219, 2.7743211], [], 0, "CAN_COLLIDE"];
  _this setDir -30.240339;
  _this setPos [13678.152, 2903.9219, 2.7743211];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
};

if (true) then
{
  _this = createVehicle ["M2StaticMG", [13691.338, 2965.5811, 8.7748051], [], 0, "CAN_COLLIDE"];
  _this setPos [13691.338, 2965.5811, 8.7748051];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
};

if (true) then
{
  _this = createVehicle ["M2StaticMG", [13757.332, 2909.4739, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _this setPos [13757.332, 2909.4739, -9.1552734e-005];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
};

if (true) then
{
  _this = createVehicle ["Fort_Nest_M240", [13659.647, 3043.1584, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _this setDir -7.6528139;
  _this setPos [13659.647, 3043.1584, 1.1444092e-005];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
};

if (true) then
{
  _this = createVehicle ["Fort_Nest_M240", [13647.51, 3040.7854, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _this setDir -16.672335;
  _this setPos [13647.51, 3040.7854, -1.5258789e-005];
  _gunner = _unitGroup createUnit ["Bandit1_DZ", [0,0,0], [], .75, "PRIVATE"];
  [_gunner] joinSilent _unitGroup;
  _gunner moveingunner _this;
};


