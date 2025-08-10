// Dibujar campo de texto
draw_set_font(OldNewsPaper);

draw_set_color(c_white);
draw_rectangle(x - 200, y - 30, x + 200, y + 30, false);
draw_set_color(c_black);
draw_rectangle(x - 200, y - 30, x + 200, y + 30, true);

// Dibujar texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var display_text = text_input;
if (is_active && current_time % 1000 < 500) {
    display_text += "|";
}
draw_text(x, y, display_text);

// Mensaje de retroalimentación
if (feedback_message != "") {
    draw_set_color(feedback_message == "Correcto!" ? c_green : c_red);
    draw_text(x, y + 50, feedback_message);
}

// Instrucciones
draw_set_color(c_white);
draw_text(x, y - 60, "Describe las imagenes con una palabra y presiona Enter:");

// Restablecer
draw_set_halign(fa_left);
draw_set_valign(fa_top);