/// @argument0 role
/// @argument1 item_name
/// @argument2 item_quality

var role=argument0;
var item_name=argument1;
var quality=argument2;

if(role.num_curItem<NUM_ROLE_ITEM){
	ds_grid_set(role.items,num_curItem,INDEX_ITEM_NAME,item_name); 
	ds_grid_set(role.items,num_curItem,INDEX_ITEM_QUALITY,quality); 
	num_curItem++;
}
