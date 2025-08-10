// Detectar sala y configurar controlador correspondiente
var sala_actual = room_get_name(room);

if (sala_actual == "FirstRoom_rm" || instance_exists(obj_controlador_1)) {
    with (obj_controlador_1) {
        nivel_actual = 0;
        juego_completado = false;
        cargar_nivel();
    }
} else if (sala_actual == "SecondRoom_rm" || instance_exists(obj_controlador_2)) {
    with (obj_controlador_2) {
        nivel_actual = 0;
        juego_completado = false;
        cargar_nivel();
    }
} else if (sala_actual == "LastRoom_rm" || instance_exists(obj_controlador_3)) {
    with (obj_controlador_3) {
        nivel_actual = 0;
        juego_completado = false;
        cargar_nivel();
    }
}

room_goto(Room2);