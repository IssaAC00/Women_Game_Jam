draw_set_font(OldNewsPaper);


// Buscar el controlador unificado
if (!instance_exists(obj_controlador_stroop)) exit;


// Verificar si el juego ya terminó
if (obj_controlador_stroop.juego_terminado) exit;

// Verificar si el juego ya terminó
if (obj_controlador_stroop.juego_terminado) exit;

// Verificar respuesta
if (mi_color == obj_controlador_stroop.color_correcto_nivel) {
    obj_controlador_stroop.mensaje_resultado = ":)";
    alarm[0] = 120;
} else {
    obj_controlador_stroop.mensaje_resultado = "...";
    alarm[1] = 90;
}

obj_controlador_stroop.juego_terminado = true;