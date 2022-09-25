if keyboard_check_pressed(vk_down){
index++
}
if keyboard_check_pressed(vk_up){
index--
}
if (index > op_max -1){
index=0;
}

if (index < 0){
index=op_max-1;
}

if keyboard_check_pressed(ord("Z")){
if (index ==0){
room_goto(rm_01)

}
}

 
if keyboard_check_pressed(ord("Z")){
if (index ==2){
game_end()
}
}

if keyboard_check_pressed(ord("Z")){
if (index ==1){
if(file_exists("save.sav")){
ini_open("save.sav");
obj_p.visible=true;
obj_p.x = ini_read_real("player","x_atual",0);
obj_p.y = ini_read_real("player","y_atual",0);
room_goto(ini_read_real("player","sala_atual",0));
ini_close()
		}
	
	}
}
