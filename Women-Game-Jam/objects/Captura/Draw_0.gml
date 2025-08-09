var text_scale = 2.0; // Cambia este valor para ajustar el tamaño

// Dibujar el campo de texto (ajustar tamaño del rectángulo para el texto más grande)
draw_set_color(c_white);
var rect_width = 150; // Aumentado para texto más grande
var rect_height = 40;  // Aumentado para texto más grande
draw_rectangle(x - rect_width, y - rect_height, x + rect_width, y + rect_height, true);

// Dibujar el texto con escala
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x, y, user_text, text_scale, text_scale, 0);

// Cursor parpadeante
if (is_active && floor(current_time / 500) % 2 == 0) {
    var text_width = string_width(user_text) * text_scale;
    draw_text_transformed(x + text_width/2 + 2, y, "|", text_scale, text_scale, 0);
}

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);