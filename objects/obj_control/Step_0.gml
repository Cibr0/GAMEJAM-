if instance_exists(obj_dialogo){
global.dialog = true;
}

if keyboard_check_pressed(vk_escape){
game_end()
}