/// @description Insert description here
// You can write your code in this editor


// Verificar el valor de la variable global room_origin y mostrar la pista correspondiente
if (global.room_origin == "first") {
    // Pista para la primera habitación/puzzle
 draw_text(x, y - 80, "Pista: _ o _ _ _ n _");

}
else if (global.room_origin == "second") {
    // Pista para la segunda habitación/puzzle
   draw_text(x, y - 80, "Pista: r _ _ _ _ _ a");

}
else if (global.room_origin == "last") {
    // No mostrar pista en la última habitación
    draw_text(x, y - 80, "Pista: _ _ _ _ _");

}
else {
    // Pista por defecto para otras habitaciones o si room_origin está vacío
    draw_text(x, y - 80, "Pista: * o * * *n _");
}