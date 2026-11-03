
//se o ângulo da imagem for igual a 359
if (image_angle == 359) //está inclinado pra direita
{
	//inclina pra esquerda
	image_angle = 181;
	
	//inverte a escala y
	image_yscale = -image_yscale; //para o texto não ficar de cabeça pra baixo
	
	//inverte a escala x
	image_xscale = -image_xscale; //vira o texto e deixa ele legível
}
//se o ângulo da imagem for igual a qualquer outro ângulo (como 181)
else //pode estar inclinado pra esquerda
{
	//inclina pra direita
	image_angle = 359;
		
	//inverte a escala y
	image_yscale = -image_yscale; //para o texto não ficar de cabeça pra baixo
	
	//inverte a escala x
	image_xscale = -image_xscale; //vira o texto de volta
}


//reiniciando o alarme
alarm[0] = timer;

