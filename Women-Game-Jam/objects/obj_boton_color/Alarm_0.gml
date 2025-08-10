// Alarma 0
var controlador_id = noone;

if (instance_exists(obj_controlador_stroop)) {
    with (obj_controlador_stroop) {
        nivel_actual++;
        cargar_nivel();
    }
}