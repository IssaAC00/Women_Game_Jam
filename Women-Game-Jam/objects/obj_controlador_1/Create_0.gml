// Sistema de dificultad básica
nivel_actual = 0;
total_niveles = 3;
juego_completado = false;

// Configurar niveles básicos
niveles = [];
niveles[0] = {
    palabra: "AZUL",
    color_escrito: c_green,
    color_correcto: c_blue
};
niveles[1] = {
    palabra: "ROJO", 
    color_escrito: c_blue,
    color_correcto: c_red
};
niveles[2] = {
    palabra: "VERDE",
    color_escrito: c_red,
    color_correcto: c_green
};

// Variables del juego
palabra_actual = "";
color_palabra = c_white;
color_correcto_nivel = c_white;
juego_terminado = false;
mensaje_resultado = "";

// Función para cargar nivel básico
function cargar_nivel() {
    if (nivel_actual < array_length(niveles)) {
        var nivel = niveles[nivel_actual];
        palabra_actual = nivel.palabra;
        color_palabra = nivel.color_escrito;
        color_correcto_nivel = nivel.color_correcto;
        
        // Configurar colores básicos en los botones
		with (obj_boton_color) {
	    if (mi_posicion == 0) mi_color = c_blue;      // Botón izquierdo
	    else if (mi_posicion == 1) mi_color = c_green; // Botón central
	    else if (mi_posicion == 2) mi_color = c_red;   // Botón derecho
		}
        
        juego_terminado = false;
        mensaje_resultado = "";
    } else {
        palabra_actual = "";
        mensaje_resultado = "¡Haz completado el puzzle!";
        juego_completado = true;
        juego_terminado = true;
    }
}

cargar_nivel();