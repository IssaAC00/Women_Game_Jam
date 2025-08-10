/// @description Insert description here
// You can write your code in this editor


// Detectar la posición del objeto y redirigir según la ubicación
if (x >= 400 && x <= 600 && y >= 400 && y <= 600) {
    // Botón del centro-abajo (x:544, y:480) - Ir a SecondPuzzel_rm
    room_goto(SecondPuzzel_rm);
}
else if (x >= 900 && x <= 1100 && y >= 200 && y <= 400) {
    // Botón de la derecha-centro (x:1024, y:256) - Ir a SecondRoom_rm
    room_goto(TestRoom1);
}
else if (x >= 350 && x <= 550 && y >= 50 && y <= 150) {
    // Botón de arriba-izquierda (x:448, y:96) - Ir a LatsRoom_rm
    room_goto(TestRoom2);
}
else {
    // En caso de que no coincida con ninguna posición específica
    // Puedes agregar un comportamiento por defecto o mostrar un mensaje
    show_debug_message("Posición del botón no reconocida: x=" + string(x) + ", y=" + string(y));
}