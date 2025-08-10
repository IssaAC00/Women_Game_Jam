var _x = center_x, _y = center_y
var _sprite_tl = {
	x: _x - sprite_get_xoffset(spr_finder_puzzle_bg),
	y: _y - sprite_get_yoffset(spr_finder_puzzle_bg)
}
var _text_x = _sprite_tl.x + 10, _text_y = _sprite_tl.y + 10
draw_sprite(spr_finder_puzzle_bg, 0, _x, _y)
draw_sprite_ext(puzzle_sprite, 0, _x, _y, art_scale, art_scale, 0, c_white, 1)
draw_set_font(OldNewsPaper)
draw_set_color(c_black)
draw_text(_text_x, _text_y, prompt_text)
draw_set_color(c_white)