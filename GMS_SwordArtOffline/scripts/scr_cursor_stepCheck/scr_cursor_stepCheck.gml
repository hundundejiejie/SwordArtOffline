#macro BTN_A ord("Z")
#macro BTN_B ord("X")
#macro BTN_U vk_up
#macro BTN_D vk_down
#macro BTN_L vk_left
#macro BTN_R vk_right


var isA=keyboard_check_pressed(BTN_A);
var isB=keyboard_check_pressed(BTN_B);
var dx=keyboard_check_pressed(BTN_R)-keyboard_check_pressed(BTN_L);
var dy=keyboard_check_pressed(BTN_D)-keyboard_check_pressed(BTN_U);
//var tempRoleX;
//var tempRoleY;

	
switch(state){
	case CursorState.free:
		if((dx!=0||dy!=0)
		&&x+dx*UNIT<room_width&&x+dx*UNIT>0
		&&y+dy*UNIT<room_height&&y+dy*UNIT>0){
			x+=dx*UNIT;
			y+=dy*UNIT;
		}
		else if(isA){
			selectedRole=instance_position(x,y,obj_role_player);
			if(selectedRole!=noone){
			  //if(selectedRole.control==controlType.player)			
				if(selectedRole.roleState==RoleState.idle){	
					state=CursorState.selectedRole;
					
					tempRoleX=selectedRole.x;
					tempRoleY=selectedRole.y;
					
					playerPath=path_add();
					buildPath(playerPath,x,y);		
							
					setRoleState(selectedRole,RoleState.selected);
				}
			}
			
			
			
		}
		break;
	case CursorState.selectedRole:
		if((dx!=0||dy!=0)){
			var ins=instance_position(x+dx*UNIT,y+dy*UNIT,obj_canMove);
			if(ins!=noone&&ins.image_index==CAN_MOVE){			
			x+=dx*UNIT;
			y+=dy*UNIT;
			selectedRole.x+=dx*UNIT;
			selectedRole.y+=dy*UNIT;
			buildPath(playerPath,x,y);
			}
		}
		
		else if(isA){
			state=CursorState.moved;
			
			deletePath(playerPath);


			deleteCanMove();
		
			setRoleState(selectedRole,RoleState.gray);
		}
		
		else if(isB){
			state=CursorState.free;
			
			selectedRole.x=tempRoleX;
			selectedRole.y=tempRoleY;
				
			x=tempRoleX;
			y=tempRoleY;
					
			deletePath(playerPath);
			deleteCanMove();
		
			setRoleState(selectedRole,RoleState.idle);
		}
		
		break;
	
	default:
}	




	
	
	
