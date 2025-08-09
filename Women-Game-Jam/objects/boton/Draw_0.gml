/// @description Insert description here
// You can write your code in this editor


// Solo dibujar en modo debug
if (debug_mode) {
    var alpha_val = 0.3;
    var color = c_green;
    
    if (hover_effect) {
        alpha_val = 0.5;
        color = c_yellow;
    }
    if (pressed) {
        alpha_val = 0.7;
        color = c_red;
    }
    
    draw_set_alpha(alpha_val);
    draw_set_color(color);
    draw_rectangle(x - sprite_width/2, y - sprite_height/2,
                   x + sprite_width/2, y + sprite_height/2, false);
    
    // Texto indicativo
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(x, y, "BUTTON\n" + room_get_name(target_room));
    
    // Reset
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}