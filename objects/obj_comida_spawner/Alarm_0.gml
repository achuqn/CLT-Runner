
//escolhe o lado
x = choose(16, room_width - 16);	//se meu x é igual a 16, lado é esquerdo
									//se meu x é igual a room_width - 16, lado é direito

//se o lado é esquerdo
if (x == 16)
{
	//cria o objeto comida
	instance_create_layer(x, y, "Comida", obj_comida);
}
//se o lado é direito
else
{
	//cria o objeto comida e guarda ela numa variável temporária
	var _inst = instance_create_layer(x, y, "Comida", obj_comida);
	
	//inverte a xscale do objeto criado para não aparecer de cabeça pra baixo
	_inst.image_xscale = -1;
	
	//inverte a yscale do objeto criado mas não tem muita diferença na real (porque não tem texto)
	_inst.image_yscale = -1;
}


//reseta o alarme
alarm[0] = random_range(tempo, tempo_max);

