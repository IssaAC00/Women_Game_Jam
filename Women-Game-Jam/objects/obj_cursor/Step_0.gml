x = mouse_x
y = mouse_y
var _inst = instance_place(x,y, all)
if (_inst != noone) {
	if (asset_has_tags(_inst, "button")){
        cursor_sprite = spr_cursor_hover
    } else {
		cursor_sprite = spr_cursor
	}
} else {
	cursor_sprite = spr_cursor
}