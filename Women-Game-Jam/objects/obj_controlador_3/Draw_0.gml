// Dibujar la pregunta
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(room_width/2, 80, "¿Qué color representa este código?", 2, 2, 0);
draw_text(room_width/2, 120, "Dificultad: HEXADECIMAL - Nivel: " + string(nivel_actual + 1) + "/" + string(total_niveles));

// Dibujar el código hexadecimal
if (codigo_actual != "") {
    draw_set_color(c_white);
    draw_text_transformed(room_width/2, 170, codigo_actual, 3, 3, 0);
    
    // Dibujar un círculo con el color correspondiente (como pista visual)
    draw_set_color(color_para_mostrar);
    draw_circle(room_width/2, 220, 30, false);
    
    // Opcional: mostrar también los valores RGB
    var r = color_get_red(color_para_mostrar);
    var g = color_get_green(color_para_mostrar);
    var b = color_get_blue(color_para_mostrar);
    draw_set_color(c_gray);
    draw_text(room_width/2, 260, "RGB(" + string(r) + ", " + string(g) + ", " + string(b) + ")");
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