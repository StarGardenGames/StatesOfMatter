//force to center
var centerDir = point_direction(
    phy_position_x,phy_position_y,
    oWater.avgX,oWater.avgY);
var mag = centerForceFactor * point_distance(
    phy_position_x,phy_position_y,
    oWater.avgX,oWater.avgY);
var cx = lengthdir_x(mag,centerDir);
var cy = lengthdir_y(mag,centerDir);
    
//force to target
var targetDir = point_direction(
    phy_position_x,phy_position_y,
    oTarget.x,oTarget.y);
var mag = targetForceFactor * point_distance(
    phy_position_x,phy_position_y,
    oTarget.x,oTarget.y);
var tx = lengthdir_x(mag,targetDir);
var ty = lengthdir_y(mag,targetDir);

//random
var rdir = random(360);
var rx = lengthdir_x(randForceMag,rdir);
var ry = lengthdir_y(randForceMag,rdir);

//apply
physics_apply_force(phy_position_x,phy_position_y,
    cx+tx+rx,cy+ty+ry);


