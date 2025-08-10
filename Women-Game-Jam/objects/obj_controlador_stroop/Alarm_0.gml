// Configurar niveles según el modo
switch (modo_actual) {
    case 1: // Básico
        total_niveles = 3;
        configurar_modo_basico();
        break;
    
    case 2: // Tonos
        total_niveles = 3;
        configurar_modo_tonos();
        break;
    
    case 3: // Hexadecimal
        total_niveles = 6;
        configurar_modo_hexadecimal();
        break;
}

// Cargar primer nivel
cargar_nivel();