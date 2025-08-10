// Dibujar el sprite del botón con el color actual
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, mi_color, image_alpha);

// Dibujar texto según la posición y el controlador
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var texto_boton = "";

// Verificar qué controlador está activo para determinar el texto
if (instance_exists(obj_controlador_1) || instance_exists(obj_controlador_2)) {
    // Controladores básico y tonos - mostrar nombres de colores o letras
    if (instance_exists(obj_controlador_1)) {
        // Dificultad básica - nombres completos
        if (mi_posicion == 0) texto_boton = "AZUL";
        else if (mi_posicion == 1) texto_boton = "VERDE";
        else if (mi_posicion == 2) texto_boton = "ROJO";
    } else {
        // Dificultad tonos - letras
        if (mi_posicion == 0) texto_boton = "A";
        else if (mi_posicion == 1) texto_boton = "B";
        else if (mi_posicion == 2) texto_boton = "C";
    }
} else if (instance_exists(obj_controlador_3)) {
    // Controlador hexadecimal - mostrar valores hex del color
    var r = color_get_red(mi_color);
    var g = color_get_green(mi_color);  
    var b = color_get_blue(mi_color);
    texto_boton = "#" + string_upper(dec_to_hex(r)) + string_upper(dec_to_hex(g)) + string_upper(dec_to_hex(b));
}

draw_text(x, y, texto_boton);

// Resetear
draw_set_halign(fa_left);
draw_set_valign(fa_top);