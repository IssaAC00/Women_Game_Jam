if (is_mouse_over_target()) {
	if (mouse_check_button_pressed(mb_left)) {
		global.finder_puzzle_1_solved = true
		room_goto(room_to_return_to)
	}
}