// Sistema de dificultad de tonos
nivel_actual = 0;
total_niveles = 3;
juego_completado = false;

// Configurar niveles de tonos
niveles = [];
niveles[0] = {
    palabra: "ROSA",
    color_escrito: make_color_rgb(255, 192, 203), 
    color_correcto: make_color_rgb(255, 192, 203),
    colores_botones: [
        make_color_rgb(255, 192, 203), // correcto
        make_color_rgb(255, 20, 147),  
        make_color_rgb(255, 105, 180)  
    ]
};
niveles[1] = {
    palabra: "AZUL",
    color_escrito: make_color_rgb(163, 185, 230),
    color_correcto: make_color_rgb(163, 185, 230),
    colores_botones: [
        make_color_rgb(127, 158, 220),
        make_color_rgb(163, 185, 230), // correcto
        make_color_rgb(91, 131, 210)   
    ]
};
niveles[2] = {
    palabra: "VERDE",
    color_escrito: make_color_rgb(102, 153, 0),
    color_correcto: make_color_rgb(102, 153, 0),
    colores_botones: [
        make_color_rgb(102, 153, 51),  
        make_color_rgb(102, 153, 102),     
        make_color_rgb(102, 153, 0)  // correcto
    ]
};

// Variables del juego
palabra_actual = "";
color_palabra = c_white;
color_correcto_nivel = c_white;
juego_terminado = false;
mensaje_resultado = "";

// Función para cargar nivel de tonos
function cargar_nivel() {
    if (nivel_actual < array_length(niveles)) {
        var nivel = niveles[nivel_actual];
        palabra_actual = nivel.palabra;
        color_palabra = nivel.color_escrito;
        color_correcto_nivel = nivel.color_correcto;
        
        // Configurar colores de tonos en los botones
		with (obj_boton_color) {
		if (mi_posicion == 0) mi_color = other.niveles[other.nivel_actual].colores_botones[0];
		else if (mi_posicion == 1) mi_color = other.niveles[other.nivel_actual].colores_botones[1];
		else if (mi_posicion == 2) mi_color = other.niveles[other.nivel_actual].colores_botones[2];
		}
        
        juego_terminado = false;
        mensaje_resultado = "";
    } else {
        palabra_actual = "";
        mensaje_resultado = "Haz completado el puzzle";
        juego_completado = true;
        juego_terminado = true;
    }
}

cargar_nivel();