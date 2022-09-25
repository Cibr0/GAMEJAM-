movex = -keyboard_check(vk_left)+keyboard_check(vk_right)

hspd=movex*spd

movey = -keyboard_check(vk_up)+keyboard_check(vk_down)

vspd=movey*spd

#region //scripts
//push
scr_push();
// move
scr_move(hspd,vspd);
#endregion

#region //Dialogo
if distance_to_object(obj_arvsv) <= 10{
 if keyboard_check_pressed(ord("Z")) and global.dialog = false{
 var _npc = instance_nearest(x,y, obj_arvsv)
 var _dialog = instance_create_layer(x, y, "dialogo", obj_dialogo);
 _dialog.npc_nome = _npc.nome; 
 }
}
#endregion

#region //Mudando sprites

if keyboard_check(vk_right)
{
	direc=0 
	sprite_index=spr_rp
}
if keyboard_check(vk_left)
{
	direc=1
	sprite_index=spr_pandx_1
}
if keyboard_check(vk_down)
{
	direc=2
	sprite_index=spr_p
}
if keyboard_check(vk_up)
{
	direc=3
	sprite_index=spr_pcos
}
else{ if direc==0
{
sprite_index = spr_rp
}
else if direc==1
{
sprite_index= spr_pandx_1
}

else if direc ==2 {
sprite_index = spr_p
}
else if direc ==3 {
sprite_index = spr_pcos
}
}


if hspd !=0
{
 switch movex
 {
 case 1: sprite_index=spr_rpand break
 case -1: sprite_index=spr_lpand break
 }
}

if vspd !=0
{
 switch movey
 {
 case 1: sprite_index=spr_pfand break
 case -1: sprite_index=spr_pcosand break
 }
}

if direc == 0 
{
 switch movey
 {
 case 1: sprite_index=spr_pfand
 case -1: sprite_index= spr_pfand
 }
}

else if direc == 1
{
 switch movey
 {
 case 1: sprite_index=spr_pandx_1
 case -1: sprite_index= spr_pandx_1
 }
}


	#endregion








