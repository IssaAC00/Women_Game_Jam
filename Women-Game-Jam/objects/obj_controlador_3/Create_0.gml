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
        with (obj_boton_azul) mi_color = c_blue;
        with (obj_boton_verde) mi_color = c_green;
        with (obj_boton_rojo) mi_color = c_red;
        
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