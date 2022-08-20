var left, right, jump, chao;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
jump = keyboard_check_pressed(ord("W"));
chao = place_meeting(x, y + 1, obj_colisao);

//Movimento do Player
scr_moves_player(left, right, jump, chao);