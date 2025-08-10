// Detectar sala y configurar controlador correspondiente
//global.modo_stroop = 1; // Por defecto

var sala_actual = room_get_name(room);

if (sala_actual == "FirstRoom_rm") {
	global.modo_stroop = 1; 
	
} else if (sala_actual == "SecondRoom_rm" ) {
	global.modo_stroop = 2; 
	
} else if (sala_actual == "LastRoom_rm" ) {
	global.modo_stroop = 3;  
    }


room_goto(Room2);