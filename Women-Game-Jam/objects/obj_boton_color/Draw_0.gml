draw_set_font(OldNewsPaper);

// Dibujar el sprite del botón con el color actual
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, mi_color, image_alpha);

// Dibujar texto según la posición y el controlador
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);


// Resetear
draw_set_halign(fa_left);
draw_set_valign(fa_top);