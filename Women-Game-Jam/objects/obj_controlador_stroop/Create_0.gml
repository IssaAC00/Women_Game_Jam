// Leer modo de variable global
modo_actual = global.modo_stroop;



// Variables comunes
nivel_actual = 0;
juego_completado = false;
juego_terminado = false;
mensaje_resultado = "";

// Variables específicas por modo
palabra_actual = "";
codigo_actual = "";
color_palabra = c_white;
color_correcto_nivel = c_white;
color_para_mostrar = c_white;

// Configurar el modo usando alarma
alarm[0] = 1; // Disparar en el siguiente frame

// Función para configurar modo básico
function configurar_modo_basico() {
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
}

// Función para configurar modo tonos
function configurar_modo_tonos() {
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
}

// Función para configurar modo hexadecimal
function configurar_modo_hexadecimal() {
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
}

// Función unificada para cargar nivel
function cargar_nivel() {
    if (nivel_actual < array_length(niveles)) {
        var nivel = niveles[nivel_actual];
        
        switch (modo_actual) {
            case 1: // Básico
                palabra_actual = nivel.palabra;
                color_palabra = nivel.color_escrito;
                color_correcto_nivel = nivel.color_correcto;
                
                with (obj_boton_color) {
                    if (mi_posicion == 0) mi_color = c_blue;
                    else if (mi_posicion == 1) mi_color = c_green;
                    else if (mi_posicion == 2) mi_color = c_red;
                }
                break;
            
            case 2: // Tonos
                palabra_actual = nivel.palabra;
                color_palabra = nivel.color_escrito;
                color_correcto_nivel = nivel.color_correcto;
                
                with (obj_boton_color) {
                    if (mi_posicion == 0) mi_color = other.niveles[other.nivel_actual].colores_botones[0];
                    else if (mi_posicion == 1) mi_color = other.niveles[other.nivel_actual].colores_botones[1];
                    else if (mi_posicion == 2) mi_color = other.niveles[other.nivel_actual].colores_botones[2];
                }
                break;
            
            case 3: // Hexadecimal
                codigo_actual = nivel.codigo_hex;
                color_correcto_nivel = nivel.color_correcto;
                
                with (obj_boton_color) {
                    if (mi_posicion == 0) mi_color = other.niveles[other.nivel_actual].colores_botones[0];
                    else if (mi_posicion == 1) mi_color = other.niveles[other.nivel_actual].colores_botones[1];
                    else if (mi_posicion == 2) mi_color = other.niveles[other.nivel_actual].colores_botones[2];
                }
                break;
        }
        
        juego_terminado = false;
        mensaje_resultado = "";
    } else {
        mensaje_resultado = "Has completado el puzzle";
        juego_completado = true;
        juego_terminado = true;

    // Regresar a sala de origen después de mostrar mensaje
    alarm[2] = 120; // 2 segundos para mostrar mensaje
	}
}