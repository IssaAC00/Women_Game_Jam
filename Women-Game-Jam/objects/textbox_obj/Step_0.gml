/// @description Insert description here
// You can write your code in this editor


if (is_active) {
    var key_pressed = keyboard_lastchar;
    
    if (key_pressed != "" && string_length(text_input) < max_length) {
        if (key_pressed >= "a" && key_pressed <= "z") || (key_pressed >= "A" && key_pressed <= "Z") {
            text_input += string_lower(key_pressed);
            keyboard_lastchar = "";
        }
    }
    
    if (keyboard_check_pressed(vk_backspace) && string_length(text_input) > 0) {
        text_input = string_delete(text_input, string_length(text_input), 1);
    }
    
    if (keyboard_check_pressed(vk_enter)) {
        if (text_input == "justicia") {
            feedback_message = "¡Correcto!";
            alarm[0] = 60;
            is_active = false;
        } else {
            feedback_message = "Incorrecto. Intenta de nuevo.";
            text_input = "";
            alarm[1] = 120;
        }
    }
}