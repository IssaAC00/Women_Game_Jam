if (is_active) {
    var key_pressed = keyboard_lastchar;
    
    // Permitir entrada de letras
    if (key_pressed != "" && string_length(text_input) < max_length) {
        if (key_pressed >= "a" && key_pressed <= "z") || (key_pressed >= "A" && key_pressed <= "Z") {
            text_input += string_lower(key_pressed);
            keyboard_lastchar = "";
        }
    }
    
    // Manejar backspace
    if (keyboard_check_pressed(vk_backspace) && string_length(text_input) > 0) {
        text_input = string_delete(text_input, string_length(text_input), 1);
    }
    
    // Verificar entrada al presionar Enter
    if (keyboard_check_pressed(vk_enter)) {
        // Obtener la palabra objetivo (asegurándonos de que esté en minúsculas)
        var target_word = "";
        if (variable_global_exists("current_word")) {
            target_word = string_lower(global.current_word);
        } else {
            target_word = "condena"; // Palabra por defecto si no existe la variable global
        }
        
        // Verificar si la respuesta es correcta
        if (text_input == target_word) {
            feedback_message = "Correcto!";
            is_active = false;
            alarm[0] = 60; // Alarma para manejar el éxito (60 steps = 1 segundo)
        } else {
            feedback_message = "Incorrecto. Intenta de nuevo.";
            text_input = "";
            alarm[1] = 120; // Alarma para limpiar mensaje de error (120 steps = 2 segundos)
        }
    }
}