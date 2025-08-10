/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor


// Detectar si el mouse está sobre el botón
var mouse_over = point_in_rectangle(mouse_x, mouse_y, 
                                   x - sprite_width/2, y - sprite_height/2,
                                   x + sprite_width/2, y + sprite_height/2);

// Efecto hover (opcional)
if (mouse_over && !hover_effect) {
    hover_effect = true;
    // audio_play_sound(snd_hover, 1, false); // Sonido opcional
}
if (!mouse_over && hover_effect) {
    hover_effect = false;
}

// Detectar click
if (mouse_check_button_pressed(mb_left) && mouse_over) {
    pressed = true;
    // audio_play_sound(snd_click, 1, false); // Sonido de click
    
    // Cambiar de escena después de un pequeño delay (opcional)
    alarm[0] = 10; // 10 frames de delay
    
    // O cambiar inmediatamente:
    // room_goto(target_room);
}

