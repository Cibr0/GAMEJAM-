if place_meeting(x,y, obj_p) and !instance_exists(obj_tr){
var inst = instance_create_depth(0,0, -9999, obj_tr);
inst.t_x = t_x;
inst.t_y = t_y;
inst.t_rm = t_rm;
}