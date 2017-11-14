/// @description Insert description here
// You can write your code in this editor
globalvar doMoreSelectIndex;
globalvar itemSelectIndex;
globalvar operatedRole;

globalvar storyLine;
global.storyLine=0;
globalvar playerFrontTeam;
global.playerFrontTeam=ds_list_create();
globalvar playerWorldTeam;
global.playerWorldTeam=ds_list_create();




globalvar cursor_pointer;
worldTeamFlag=instance_find(obj_team_flag,0);  //its a single instance
textBoxManager=instance_find(obj_textBox_manager,0);  //its a single instance
playerFrontManager=instance_find(obj_playerFrontManager,0);

globalvar inputReceiver;
global.inputReceiver=InputReceiver.worldTeamFlag;


//********* data init*************
globalvar asuna;
globalvar kirito;
globalvar silica;

global.asuna=instance_find(obj_role_asuna,0);
global.kirito=instance_find(obj_role_kirito,0);
global.silica=instance_find(obj_role_silica,0);

