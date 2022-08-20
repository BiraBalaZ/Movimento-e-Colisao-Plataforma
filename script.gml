function scr_moves_player(left, right, jump, chao){

	//Dando velocidade horizontal
	velh = (right-left) * vel;

	//Se estou no chao eu posso pular, senao, sou puxado
	if (jump and chao){velv = pulo} else if (not chao){velv += gravidade}
	
	//Colisao e Movimento Horizontal
	if (place_meeting(x + velh, y, obj_colisao))
	{
		while not place_meeting(x + sign(velh), y, obj_colisao)
		{
			x += sign(velh);
		}
		velh = 0;
	}
	x += velh;

	//Colisao e Movimento Vertical
	if (place_meeting(x, y + velv, obj_colisao))
	{
		while not place_meeting(x, y + sign(velv), obj_colisao)
		{
			y += sign(velv);
		}
		velv = 0;
	}
	y += velv;
}