// Función para convertir decimal a hexadecimal
function dec_to_hex(decimal) {
    if (decimal == 0) return "00";
    
    var hex_chars = "0123456789ABCDEF";
    var result = "";
    
    while (decimal > 0) {
        var remainder = decimal mod 16;
        result = string_char_at(hex_chars, remainder + 1) + result;
        decimal = decimal div 16;
    }
    
    // Asegurar que tenga 2 dígitos
    if (string_length(result) == 1) result = "0" + result;
    
    return result;
}

// Sistema de dificultad hexadecimal
nivel_actual = 0;
total_niveles = 6;
juego_completado = false;

// Configurar niveles hexadecimales
niveles = [];
niveles[0] = {
    codigo_hex: "#FF0000",  // Rojo
    color_correcto: c_red,
    color_mostrado: make_color_rgb(255, 0, 0)
};
niveles[1] = {
    codigo_hex: "#00FF00",  // Verde
    color_correcto: c_green,
    color_mostrado: make_color_rgb(0, 255, 0)
};
niveles[2] = {
    codigo_hex: "#0000FF",  // Azul
    color_correcto: c_blue,
    color_mostrado: make_color_rgb(0, 0, 255)
};
niveles[3] = {
    codigo_hex: "#FFFF00",  // Amarillo
    color_correcto: c_yellow,
    color_mostrado: make_color_rgb(255, 255, 0)
};
niveles[4] = {
    codigo_hex: "#FF00FF",  // Magenta
    color_correcto: c_fuchsia,
    color_mostrado: make_color_rgb(255, 0, 255)
};
niveles[5] = {
    codigo_hex: "#00FFFF",  // Cyan
    color_correcto: c_aqua,
    color_mostrado: make_color_rgb(0, 255, 255)
};

// Variables del juego
codigo_actual = "";
color_correcto_nivel = c_white;
color_para_mostrar = c_white;
juego_terminado = false;
mensaje_resultado = "";

// Función para cargar nivel hexadecimal
function cargar_nivel() {
    if (nivel_actual < array_length(niveles)) {
        var nivel = niveles[nivel_actual];
        codigo_actual = nivel.codigo_hex;
        color_correcto_nivel = nivel.color_correcto;
        color_para_mostrar = nivel.color_mostrado;
        
        // Configurar colores básicos en los botones (siempre los mismos)
		with (obj_boton_color) {
	    if (mi_posicion == 0) mi_color = c_blue;      // Botón izquierdo
	    else if (mi_posicion == 1) mi_color = c_green; // Botón central
	    else if (mi_posicion == 2) mi_color = c_red;   // Botón derecho
		}
        
        juego_terminado = false;
        mensaje_resultado = "";
    } else {
        codigo_actual = "";
        mensaje_resultado = "¡Haz completado el puzzle hexadecimal!";
        juego_completado = true;
        juego_terminado = true;
    }
}

// Cargar el primer nivel
cargar_nivel();