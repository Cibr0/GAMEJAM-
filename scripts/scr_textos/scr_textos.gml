// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_textos(){
	switch npc_nome{
		case "Primeiro texto":
		texto[0] = "(O fogo que queima nesse lampiao te aquece, te dando coragem para seguir em frente.	)"
		texto[1]= "Deseja salvar o jogo?";
		add_op("Sim", "resposta1"); 
		add_op("Nao", "resposta2");
		break;
		case "resposta1":
		if(file_exists("save.sav")) file_delete("save.sav");
		ini_open("save.sav");
		ini_write_real("player","x_atual",obj_p.x);
		ini_write_real("player","y_atual",obj_p.y);
		ini_write_real("player", "sala_atual",room)
		ini_close();
		break;
		case "resposta2":
		texto[0] = "Nao"
		break;
}
}

function add_op(_texto, _resposta){
op[op_num] = _texto;
op_resposta[op_num] = _resposta;

op_num++;
}