/// @description Insert description here
// You can write your code in this editor


// Incrementar el contador global
global.contador_respuestas += 1;

// Verificar si llegó a 9
if (global.contador_respuestas >= 2) {
    room_goto(Final); // Cambiar a la room "final"
} else {
    // Aquí puedes agregar código para continuar al siguiente puzzle
    // Por ejemplo: room_goto_next(); o room_goto(siguiente_room);
	room_goto(FirstRoom_rm);
}

