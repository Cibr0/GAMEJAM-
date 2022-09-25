 draw_set_font(ft_menu);

var _guiw = display_get_gui_width();
var _guih = display_get_gui_height();

var _xx = 0;
var _yy = _guih-200; 
var _c = c_black;

draw_set_halign(fa_center)

draw_rectangle_color(_xx, _yy, _guiw, _guih, _c,_c,_c, _c, false);
draw_text_ext(_xx + 520, _yy + 32, texto[pagina], 32, _guiw - 64);

draw_set_font(-1);

if op_draw== true{
	var _opx = _xx + 520;
	var _opy = _yy + 122;
	var _opsep = 32;
	
	op_selcionada += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down)
	op_selcionada = clamp(op_selcionada, 0, op_num -1);
	
	for (var i = 0; i < op_num; i++){
		var _stringw = string_width(op[i]);
		draw_sprite_ext(spr_opbck, 0, _opx, _opy - (_opsep * i), _stringw/16, 1, 0, c_white, 1)
		draw_text(_opx, _opy - (_opsep * i), op[i]);
		
		if op_selcionada == i{
			draw_sprite(spr_op_selec, 0,  _xx + 500, _opy - (_opsep * i) +10)
		}
	}
	
	if keyboard_check_pressed(ord("Z")){
	var _dialogo = instance_create_layer(x,y, "dialogo", obj_dialogo)
	_dialogo.npc_nome = op_resposta[op_selcionada];
	
	instance_destroy()
	}
}
