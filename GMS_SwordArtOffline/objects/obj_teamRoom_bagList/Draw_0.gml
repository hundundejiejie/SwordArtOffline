/// @description Insert description here
// You can write your code in this editor

var i;
var x_text=x;
var y_text=y;
var space=20;

var role=manager.selectedTeamRole;
var size=role.curNumItem;
if(size>0){
	for(i=0;i<size;i++){
		var itemName=ds_grid_get(role.items,i,INDEX_ITEM_NAME);
		var itemQuality=ds_grid_get(role.items,i,INDEX_ITEM_QUALITY);
	
	
		if(i==manager.selectedBagItemIndex){
			draw_set_color(c_orange);
			if(manager.teamRoomState==TeamRoomState.selectingBagItem){
				draw_text(x_text,y_text+i*(font_get_size(global.font_CN_teamRoom)+space),itemName+"x"+string(itemQuality)+"<<");
			}
			else {
				draw_text(x_text,y_text+i*(font_get_size(global.font_CN_teamRoom)+space),itemName+"x"+string(itemQuality)+">>");
			}
		}
		else{
			draw_set_color(c_black);
			draw_text(x_text,y_text+i*(font_get_size(global.font_CN_teamRoom)+space),itemName+"x"+string(itemQuality));
		}
	}
}
else{
	if(manager.teamRoomState==TeamRoomState.selectingBagItem){
		draw_set_color(c_orange);
		draw_text(x_text,y_text,"空<<");
	}
	else{
		draw_set_color(c_black);
		draw_text(x_text,y_text,"空");
	}
}