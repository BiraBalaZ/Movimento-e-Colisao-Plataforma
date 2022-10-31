function scr_movimento_plataforma(){

	var left  = keyboard_check(ord("A"));
	var right = keyboard_check(ord("D"));
	var jump  = keyboard_check_pressed(ord("W"));
	var chao  = place_meeting(x, y + 1, obj_block);

	//Dando velocidade horizontal
	velh = (right-left) * vel;

	//Se estou no chao eu posso pular, senao, sou puxado
	if (jump and chao) {velv = pulo} 
	else if (not chao) {velv += gravidade}
	
	//Colisao e Movimento Horizontal
	if (place_meeting(x + velh, y, obj_block)) {
		while not place_meeting(x + sign(velh), y, obj_block) {
			x += sign(velh);
		}
		velh = 0;
	}
	x += velh;

	//Colisao e Movimento Vertical
	if (place_meeting(x, y + velv, obj_block)) {
		while not place_meeting(x, y + sign(velv), obj_block) {
			y += sign(velv);
		}
		velv = 0;
	}
	y += velv;
}
