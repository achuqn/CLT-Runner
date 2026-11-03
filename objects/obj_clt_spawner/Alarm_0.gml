
//escolhe de que lado vai aparecer
x = choose(16, room_width - 16);	//se 16, esquerda
									//se room_width - 16, direita

//se meu x é igual a 16
if (x == 16) //lado esquerdo
{
	//cria o objeto CLT
	instance_create_layer(x, y, "CLT", obj_clt);
}
//se meu x é diferente de 16
else //que nesse caso é room_width - 16
{
	//salva a instância criada do objeto CLT
	var _inst = instance_create_layer(x, y, "CLT", obj_clt);
	
	//diz pra instância que foi criada que ela deve virar sua imagem
	_inst.image_xscale = -1; //assim ela não fica virada pro lado errado
}


//reseta o alarme entre os valores de tempo e tempo_max
alarm[0] = random_range(tempo, tempo_max);


