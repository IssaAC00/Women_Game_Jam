/// @description Insert description here
// You can write your code in this editor
// En el Create event del controlador:

var assets_layer = layer_get_id("Assets_1");
// Limpiar sprites existentes (si los hay)
//layer_sprite_destroy_all(assets_layer);

switch(global.room_origin) {
    case "first":
        // Configuración para firstRoom_rm - 2 sprites
        global.current_word = "condena";
        
        // Posiciones para 2 sprites - bien distribuidos horizontalmente
        var x_pos1 = 300;  // Devil - más a la izquierda
        var y_pos1 = 32;
        var x_pos2 = 900;  // Justieces - más a la derecha
        var y_pos2 = 32;
        
        // Crear sprites específicos en la layer de assets
        layer_sprite_create(assets_layer, x_pos1, y_pos1, DevilPainted);
        layer_sprite_create(assets_layer, x_pos2, y_pos2, pintados1);
        
        break;
        
    case "second":
        // Configuración para secondRoom - 3 sprites
        global.current_word = "realeza";
        
        // Posiciones para 3 sprites - distribuidos uniformemente
        var x_pos1 = 120;   // Carta 1 - izquierda
        var y_pos1 = 32;
        var x_pos2 = 520;   // Carta 2 - centro
        var y_pos2 = 32;
        var x_pos3 = 920;  // Carta 3 - derecha
        var y_pos3 = 32;
        
        // Crear sprites de cartas de tarot
        layer_sprite_create(assets_layer, x_pos1, y_pos1, pintados_2);
        layer_sprite_create(assets_layer, x_pos2, y_pos2, pintados3);
        layer_sprite_create(assets_layer, x_pos3, y_pos3, pintados4);
        
        break;
        
    case "last":
        // Configuración para LastRoom - 5 sprites
        global.current_word = "tarot";
        
        // Posiciones para 5 sprites - distribución en dos filas
        // Fila superior (3 sprites)
        var x_pos1 = 10;   // Devil - izquierda superior
        var y_pos1 = 32;
        var x_pos2 = 360;   // Justieces - centro superior  
        var y_pos2 = 32;
        var x_pos3 = 690;  // Carta 1 - derecha superior
        var y_pos3 = 32;
        
        // Fila inferior (2 sprites) - evitando la zona de 640x544
        var x_pos4 = 1050;   // Carta 2 - izquierda inferior
        var y_pos4 = 32;
  
        
        // Crear todos los sprites
       layer_sprite_create(assets_layer, x_pos1, y_pos1, DevilPainted);
       layer_sprite_create(assets_layer, x_pos2, y_pos2, pintados1);
		layer_sprite_create(assets_layer, x_pos3, y_pos3, pintados_2);
        layer_sprite_create(assets_layer, x_pos4, y_pos4, pintados3);
       
        
        
        break;
        
    default:
        // Configuración por defecto
        global.current_word = "condena";
        break;
}