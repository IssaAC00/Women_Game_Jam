// Regresar a la sala correspondiente según el modo
switch (modo_actual) {
    case 1:
        room_goto(FirstRoom_rm);
        break;
    case 2:
        room_goto(SecondRoom_rm);
        break;
    case 3:
        room_goto(LastRoom_rm);
        break;
    default:
        room_goto(FirstRoom_rm); 
        break;
}