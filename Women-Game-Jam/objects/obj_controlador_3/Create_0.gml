

// Sistema de dificultad hexadecimal
nivel_actual = 0;
total_niveles = 6;
juego_completado = false;

// Configurar niveles hexadecimales
niveles = [];
niveles[0] = {
    codigo_hex: "#FF0000",  // Rojo
    color_correcto: make_color_rgb(255, 0, 0),
    colores_botones: [
        make_color_rgb(255, 0, 0),   // correcto - #FF0000
        make_color_rgb(0, 255, 0),   // verde - #00FF00
        make_color_rgb(0, 0, 255)    // azul - #0000FF
    ]
};
niveles[1] = {
    codigo_hex: "#00FF00",  // Verde
    color_correcto: make_color_rgb(0, 255, 0),
    colores_botones: [
        make_color_rgb(255, 0, 0),   // rojo - #FF0000
        make_color_rgb(0, 255, 0),   // correcto - #00FF00
        make_color_rgb(0, 0, 255)    // azul - #0000FF
    ]
};
niveles[2] = {
    codigo_hex: "#0000FF",  // Azul
    color_correcto: make_color_rgb(0, 0, 255),
    colores_botones: [
        make_color_rgb(255, 0, 0),   // rojo - #FF0000
        make_color_rgb(0, 255, 0),   // verde - #00FF00
        make_color_rgb(0, 0, 255)    // correcto - #0000FF
    ]
};
niveles[3] = {
    codigo_hex: "#FFFF00",  // Amarillo
    color_correcto: make_color_rgb(255, 255, 0),
    colores_botones: [
        make_color_rgb(255, 255, 0), // correcto - #FFFF00
        make_color_rgb(255, 0, 255), // magenta - #FF00FF
        make_color_rgb(0, 255, 255)  // cyan - #00FFFF
    ]
};
niveles[4] = {
    codigo_hex: "#FF00FF",  // Magenta
    color_correcto: make_color_rgb(255, 0, 255),
    colores_botones: [
        make_color_rgb(255, 255, 0), // amarillo - #FFFF00
        make_color_rgb(255, 0, 255), // correcto - #FF00FF
        make_color_rgb(0, 255, 255)  // cyan - #00FFFF
    ]
};
niveles[5] = {
    codigo_hex: "#00FFFF",  // Cyan
    color_correcto: make_color_rgb(0, 255, 255),
    colores_botones: [
        make_color_rgb(255, 255, 0), // amarillo - #FFFF00
        make_color_rgb(255, 0, 255), // magenta - #FF00FF
        make_color_rgb(0, 255, 255)  // correcto - #00FFFF
    ]
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
        color_para_mostrar = nivel.color_correcto;
        
        // Configurar colores básicos en los botones (siempre los mismos)
        with (obj_boton_color) {
            if (mi_posicion == 0) mi_color = other.niveles[other.nivel_actual].colores_botones[0];
            else if (mi_posicion == 1) mi_color = other.niveles[other.nivel_actual].colores_botones[1];
            else if (mi_posicion == 2) mi_color = other.niveles[other.nivel_actual].colores_botones[2];
        }


        
        juego_terminado = false;
        mensaje_resultado = "";
    } else {
        codigo_actual = "";
        mensaje_resultado = "Haz completado el puzzle";
        juego_completado = true;
        juego_terminado = true;
    }
}

// Cargar el primer nivel
cargar_nivel();