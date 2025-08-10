// Coordenadas base del cuadro
var cuadro_x = 256;
var cuadro_y = 0;

// Dibujar la pregunta
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(cuadro_x + 450, cuadro_y + 300, "Cual es el color correcto?", 2, 2, 0);

// Dibujar información del nivel
var nivel_mostrar = min(nivel_actual + 1, total_niveles);
draw_text(cuadro_x + 700, cuadro_y + 200, "Nivel: " + string(nivel_mostrar) + "/ 3");


// Dibujar la palabra del nivel actual
if (palabra_actual != "") {
    draw_set_color(color_palabra);
    draw_text_transformed(cuadro_x + 450, cuadro_y + 200, palabra_actual, 3, 3, 0);
}

// Dibujar mensaje de resultado
if (mensaje_resultado != "") {
    draw_set_color(c_yellow);
    draw_text_transformed(cuadro_x + 450, cuadro_y + 250, mensaje_resultado, 1.5, 1.5, 0);
}

// Resetear configuración de dibujo
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);