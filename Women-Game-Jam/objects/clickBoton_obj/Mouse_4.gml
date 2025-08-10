/// @description Insert description here
// You can write your code in this editor

// Variable para controlar si ya se ejecutó una acción
var accion_ejecutada = false;
show_debug_message("Contador respuestas: " + string(global.contador_respuestas));

// Verificar botón especial que requiere contador == 2 PRIMERO
if (x >= 700 && x <= 900 && y >= 80 && y <= 150) {
    global.room_origin = "second";
	show_debug_message("Contador respuestas:2 " + string(global.contador_respuestas));
    room_goto(SecondRoom_rm);
    accion_ejecutada = true;
}

// Verificar otros botones solo si no se ejecutó la acción anterior
if ((x >= 400 && x <= 600 && y >= 400 && y <= 600) && !accion_ejecutada) {
    room_goto(SecondPuzzel_rm);
    accion_ejecutada = true;
}

if ((x >= 900 && x <= 1100 && y >= 200 && y <= 400) && !accion_ejecutada) {
    room_goto(TestRoom1);
    accion_ejecutada = true;
}

if ((x >= 350 && x <= 550 && y >= 50 && y <= 150) && !accion_ejecutada) {
    room_goto(Room2);
    accion_ejecutada = true;
}

// Si no se ejecutó ninguna acción, mostrar mensaje
if (!accion_ejecutada) {
    draw_text(x, y - 60, "No se puede, completa los puzzles");
}