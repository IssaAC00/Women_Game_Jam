/// @description Insert description here
// You can write your code in this editor


// Dibujar el campo de texto
draw_set_color(c_white);
draw_rectangle(x - 100, y - 20, x + 100, y + 20, true);

// Dibujar el texto
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, user_text);

// Cursor parpadeante
if (is_active && floor(current_time / 500) % 2 == 0) {
    var text_width = string_width(user_text);
    draw_text(x + text_width/2 + 2, y, "|");
}

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);