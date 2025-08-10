draw_set_font(OldNewsPaper);

// Buscar qué controlador existe en esta room
var controlador_id = noone;

if (instance_exists(obj_controlador_1)) {
    controlador_id = instance_find(obj_controlador_1, 0);
} else if (instance_exists(obj_controlador_2)) {
    controlador_id = instance_find(obj_controlador_2, 0);
} else if (instance_exists(obj_controlador_3)) {
    controlador_id = instance_find(obj_controlador_3, 0);
}

// Si no hay controlador, salir
if (controlador_id == noone) exit;

// Verificar si el juego ya terminó
if (controlador_id.juego_terminado) exit;

// Verificar respuesta
if (mi_color == controlador_id.color_correcto_nivel) {
    controlador_id.mensaje_resultado = ":)";
    alarm[0] = 120;
} else {
    controlador_id.mensaje_resultado = "...";
    alarm[1] = 90;
}

controlador_id.juego_terminado = true;