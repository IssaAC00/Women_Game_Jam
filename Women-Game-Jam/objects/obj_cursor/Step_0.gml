x = mouse_x
y = mouse_y
var _inst = instance_place(x, y, all);
if (_inst != noone) {
    if (asset_has_tags(_inst, "button")){
        image_index = 1
    } else {
		image_index = 1
	}
} else {
	image_index = 0
}