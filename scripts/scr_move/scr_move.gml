// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move(){
#region //Movimentação e colisão
var hspd= argument[0];
var vspd = argument[1];


if place_meeting(x+hspd,y,obj_wall)
{
	while !place_meeting(x+sign(hspd),y,obj_wall)
{
		x+=sign(hspd)
}
hspd=0
}


if place_meeting(x,y+vspd,obj_wall)
{
	while !place_meeting(x,y+sign(vspd),obj_wall)
{
		y+=sign(vspd)
}
vspd=0
}
x+=hspd y+=vspd


#region Dialogo
if global.dialog == true{
spd=0;
}else{
spd=1.5;
}

#endregion
#endregion


}

