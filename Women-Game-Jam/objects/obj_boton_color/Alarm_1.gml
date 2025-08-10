// Alarma 1
var controlador_id = noone;

if (instance_exists(obj_controlador_1)) {
    controlador_id = instance_find(obj_controlador_1, 0);
} else if (instance_exists(obj_controlador_2)) {
    controlador_id = instance_find(obj_controlador_2, 0);
} else {
	controlador_id = instance_find(obj_controlador_3, 0);
	}

if (controlador_id == noone) exit;

controlador_id.juego_terminado = false;
controlador_id.mensaje_resultado = "";