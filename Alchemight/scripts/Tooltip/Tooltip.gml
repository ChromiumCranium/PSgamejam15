//function to enable tooltip for potions - written by Scorcher24 on Steam

function draw_tooltip(argument0,argument1,argument2,argument3,argument4){
	  /*
    argument0 = text
    argument1 = font
    argument2 = text color
    argument3 = tooltip color
    argument3 = alpha

*/

var text_width;
var text_height;
var old_alpha;
var old_color;

// Set alpha
old_alpha = draw_get_alpha();
draw_set_alpha(argument4);

// Set font
draw_set_font(argument1);

// Set Aligns
draw_set_valign(fa_bottom);

text_width  = 5 + string_width(argument0);
text_height = 5 + string_height(argument0);

if ( ( ( device_mouse_x_to_gui(0) - window_get_width() + text_width) <= ( window_get_width() - 5) ) && ( device_mouse_x_to_gui(0) - text_width ) < 0 )
{    
    show_debug_message("DRAWING TOOLTIP")
	// Draw rect around the text
    draw_roundrect_color( device_mouse_x_to_gui(0), device_mouse_y_to_gui(0) - text_height, device_mouse_x_to_gui(0) + text_width, device_mouse_y_to_gui(0) + 5, argument3, argument3, false);

    // Set color
    old_color = draw_get_color();
    draw_set_color(argument2);

    // Draw the text inside the rect
    draw_text( device_mouse_x_to_gui(0), device_mouse_y_to_gui(0) - 2, argument0);

    // Reset old color
    draw_set_color(old_color);
}
else
{
    // Set alignment to right
    draw_set_halign(fa_right);

    // Draw rect around the text
    draw_roundrect_color( device_mouse_x_to_gui(0), device_mouse_y_to_gui(0) - text_height, device_mouse_x_to_gui(0) - text_width, device_mouse_y_to_gui(0) + 5, argument3, argument3, false);

    // Set color
    old_color = draw_get_color();
    draw_set_color(argument2);    

    // Draw the text inside the rect
    draw_text( device_mouse_x_to_gui(0), device_mouse_y_to_gui(0) - 2, argument0);    

    // Reset old color
    draw_set_color(old_color);    

    // Reset alignment to left
    draw_set_halign(fa_left);

}

// Reset alignment
draw_set_valign(fa_middle);    


// Reset alpha
draw_set_alpha(old_alpha);
}