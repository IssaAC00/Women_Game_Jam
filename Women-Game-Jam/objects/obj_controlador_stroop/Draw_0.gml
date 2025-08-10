draw_set_font(OldNewsPaper);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

switch (modo_actual) {
    case 1:
    case 2: // Básico y Tonos
        draw_text_transformed(room_width/2, 300, "Selecciona el color correcto", 2, 2, 0);
        if (palabra_actual != "") {
            draw_set_color(color_palabra);
            draw_text_transformed(room_width/2, 200, palabra_actual, 3, 3, 0);
        }
        break;
    
    case 3: // Hexadecimal
        draw_text_transformed(room_width/2, 80, "Selecciona el color correcto", 2, 2, 0);
        if (codigo_actual != "") {
            draw_set_color(c_white);
            draw_text_transformed(room_width/2, 170, codigo_actual, 3, 3, 0);
        }
        break;
}

// Mensaje de resultado (común a todos)
if (mensaje_resultado != "") {
    draw_set_color(c_yellow);
    draw_text_transformed(room_width/2, 400, mensaje_resultado, 1.5, 1.5, 0);
}

// Resetear
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);