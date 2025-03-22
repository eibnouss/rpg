// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_collision() 
{
var _collision = false;
var _entityList = ds_list_create();

// horizantol tiles
if (tilemap_get_at_pixel(collision_map,x+hspeed_,y)){
x -= x mod TILE_SIZE;
if (sign (hspeed_ )==1) x += TILE_SIZE-1;
hspeed_ = 0;
_collision = true;
}
var _entityCount = instance_position_list(x+hspeed_,y,o_entity,_entityList,false);
var _snapX;
while (_entityCount > 0){
var _entityCheck = _entityList[| 0];
if (_entityCheck.entity_collision == true){
if (sign(hspeed_)== -1) _snapX= _entityCheck.bbox_right+1;
else _snapX = _entityCheck.bbox_left+1;
x=_snapX;
hspeed_ = 0;
_collision = true;
_entityCount = 0;
}
ds_list_delete(_entityList,0);
_entityCount--;

}
// horizantol move comment
x += hspeed_
ds_list_clear(_entityList);
// vertical tiles
if (tilemap_get_at_pixel(collision_map,x,y+vspeed_)){
y -= y mod TILE_SIZE;
if (sign (vspeed_ )==1) y += TILE_SIZE-1;
vspeed_ = 0;
_collision = true;
}
var _entityCount = instance_position_list(x,y+vspeed_,o_entity,_entityList,false);
var _snapY;
while (_entityCount > 0){
var _entityCheck = _entityList[| 0];
if (_entityCheck.entity_collision == true){
if (sign(vspeed_)== -1) _snapY= _entityCheck.bbox_bottom+1;
else _snapY = _entityCheck.bbox_top+1;
y=_snapY;
vspeed_ = 0;
_collision = true;
_entityCount = 0;
}
ds_list_delete(_entityList,0);
_entityCount--;

}
// vertical move comment
y += vspeed_
ds_list_destroy(_entityList);
return _collision;
}