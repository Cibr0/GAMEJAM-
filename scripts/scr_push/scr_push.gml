// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_push(){
 // bx1horizoltal push
if (place_meeting(x+hspd/2,y,obj_box))
 {
 var block= instance_place(x+hspd/2,y,obj_box);
 with(obj_box)
 {
 scr_move(obj_p.hspd/2,0);
 }
 hspd /=2;
 }
 

 
 // bx2horizoltal push
if (place_meeting(x+hspd/2,y,obj_box2))
 {
 var block= instance_place(x+hspd/2,y,obj_box2);
 with(obj_box2)
 {
 scr_move(obj_p.hspd/2,0);
 }
 hspd /=2;
 }
 
 // vertical push
 if (place_meeting(x,y+vspd/2,obj_box2))
 {
 var block= instance_place(x,y+vspd/2,obj_box2);
 with(obj_box2)
 {
 scr_move(0,obj_p.vspd/2);
 }
 vspd /=2;
 }
 

 
 // bx3vertical push
 if (place_meeting(x,y+vspd/2,obj_box3))
 {
 var block= instance_place(x,y+vspd/2,obj_box3);
 with(obj_box3)
 {
 scr_move(0,obj_p.vspd/2);
 }
 vspd /=2;
 }
 
 
 // bx4vertical push
 if (place_meeting(x,y+vspd/2,obj_box4))
 {
 var block= instance_place(x,y+vspd/2,obj_box4);
 with(obj_box4)
 {
 scr_move(0,obj_p.vspd/2);
 }
 vspd /=2;
 }
 
 
 
 
}