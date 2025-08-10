// Buscar controlador
var controlador = noone;
if (instance_exists(obj_controlador_1)) {
    controlador = obj_controlador_1;
} else if (instance_exists(obj_controlador_2)) {
    controlador = obj_controlador_2;
}

if (controlador == noone) exit;

// Avanzar nivel
with (controlador) {
    nivel_actual++;
    cargar_nivel();
}