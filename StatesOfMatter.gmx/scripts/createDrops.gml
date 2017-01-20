avgX = 0;
avgY = 0;
numDrops = 256;
drops = ds_list_create()
for(var i = 0; i < 16; i++){
    for(var j = 0; j < 16; j++){
        var drop = instance_create(64+8+i*16,64+8+j*16,oDrop);
        ds_list_add(drops,drop);
        avgX += drop.phy_position_x/numDrops;
        avgY += drop.phy_position_y/numDrops;
    }
}
