// Dibujar botón con color
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color_boton, image_alpha);

// Dibujar texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x, y, texto_boton);

// Resetear
draw_set_halign(fa_left);
draw_set_valign(fa_top);