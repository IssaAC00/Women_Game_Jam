// Detectar posición y asignar color según la posición
if (x >= 127 && x <= 385) {
    // Botón izquierdo
    mi_color = c_blue;
    mi_posicion = 0;
} else if (x >= 575 && x <= 833) {
    // Botón central
    mi_color = c_green;
    mi_posicion = 1;
} else {
    // Botón derecho
    mi_color = c_red;
    mi_posicion = 2;
}