draw_set_font(OldNewsPaper);

// Dibujar la pregunta
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(room_width/2, 80, "Selecciona el color correcto", 2, 2, 0);


// Dibujar el código hexadecimal
if (codigo_actual != "") {
    draw_set_color(c_white);
    draw_text_transformed(room_width/2, 170, codigo_actual, 3, 3, 0);
}

// Dibujar mensaje de resultado
if (mensaje_resultado != "") {
    draw_set_color(c_yellow);
    draw_text_transformed(room_width/2, 320, mensaje_resultado, 1.5, 1.5, 0);
}

// Resetear
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);