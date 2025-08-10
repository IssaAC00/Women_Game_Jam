/// @description Insert description here
// You can write your code in this editor


// Incrementar el contador global
global.contador_respuestas += 1;

// Verificar si llegó a 9
if (global.contador_respuestas >= 2) {
    room_goto(Final); // Cambiar a la room "final"
} 

switch(global.room_origin) {
    case "first":
        room_goto(FirstRoom_rm);
        break;
    case "second":
        room_goto(SecondRoom_rm);
        break;
    case "last":
        room_goto(LastRoom_rm);
        break;
    default:
        room_goto(FirstRoom_rm);
        break;
}




