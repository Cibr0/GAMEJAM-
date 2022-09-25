 draw_set_font(ft_menu);


var dist=40;
var _guiw=display_get_gui_width();
var _guih=display_get_gui_height();
var x1= _guiw/2
var y1= _guih/1.5
 

for(var i=0; i < op_max;i++){

	
	draw_set_halign(fa_center);
draw_set_lighting(fa_center);

	if(index == i){
	draw_set_color(c_gray)
}else{
draw_set_color(c_white)
}

	draw_text(x1,y1 + (dist*i),opcoes[i])
}


draw_set_font(-1);
