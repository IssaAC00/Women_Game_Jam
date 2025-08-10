// Limpiar mensaje y reactivar juego
if (instance_exists(obj_controlador_stroop)) {
    with (obj_controlador_stroop) {
        juego_terminado = false;
        mensaje_resultado = "";
    }
}