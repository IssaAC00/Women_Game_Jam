/// @description Insert description here
// You can write your code in this editor


if (is_active) {
    // Capturar texto del teclado
    if (keyboard_string != "") {
        user_text += keyboard_string;
        keyboard_string = ""; // Limpiar buffer
        
        // Limitar longitud
        if (string_length(user_text) > max_length) {
            user_text = string_copy(user_text, 1, max_length);
        }
    }
    
    // Backspace para borrar
    if (keyboard_check_pressed(vk_backspace)) {
        if (string_length(user_text) > 0) {
            user_text = string_copy(user_text, 1, string_length(user_text) - 1);
        }
    }
    
    // Enter para confirmar
    if (keyboard_check_pressed(vk_enter)) {
        // Procesar el texto ingresado
        process_text(user_text);
        user_text = ""; // Limpiar
    }
}