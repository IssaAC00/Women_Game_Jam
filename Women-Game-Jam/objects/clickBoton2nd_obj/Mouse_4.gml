/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor

// Variable para controlar si ya se ejecutó una acción
var accion_ejecutada = false;
show_debug_message("Contador respuestas: " + string(global.contador_respuestas));

// Verificar botón especial que requiere contador == 2 PRIMERO
if (x >= 700 && x <= 950 && y >= 500 && y <= 700) {
    global.room_origin = "last";
	show_debug_message("Contador respuestas:2 " + string(global.contador_respuestas));
    room_goto(LastRoom_rm);
    accion_ejecutada = true;
}

// Verificar otros botones solo si no se ejecutó la acción anterior
if ((x >= 400 && x <= 600 && y >= 300 && y <= 500) && !accion_ejecutada) {
    room_goto(SecondPuzzel_rm);
    accion_ejecutada = true;
}



