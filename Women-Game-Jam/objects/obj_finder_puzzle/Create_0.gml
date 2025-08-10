prompt_text = "Confirma que eres real\nHaz click en el dispositivo de cortar"
art_scale = .52
center_x = room_width/2
center_y = room_height/2
is_mouse_over_target = function() {
	var _art_tl = {
		x: center_x - sprite_get_xoffset(puzzle_sprite) * art_scale,
		y: center_y - sprite_get_yoffset(puzzle_sprite) * art_scale
	}
	var _mouse_x = mouse_x
	var _mouse_y = mouse_y
	var _target_x = (_art_tl.x + target_x*art_scale)
	var _target_y = (_art_tl.y + target_y*art_scale)
	var _x_check = _mouse_x >= _target_x && _mouse_x <= (_target_x + target_width*art_scale)
	var _y_check = _mouse_y >= _target_y && _mouse_y <= (_target_y + target_height*art_scale)
	return _x_check && _y_check
}