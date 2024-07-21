//input mouse coordinates - function checks what menu the mouse is in
function mouseCheck(){
	mx=device_mouse_x_to_gui(0)
	my=device_mouse_y_to_gui(0)
	//check if in hotbar
	if(point_in_rectangle(
	mx,
	my,
	global.hotbarXBuffer,
	window_get_height()-INVENTORY_HEIGHT,
	window_get_width()-global.hotbarXBuffer,
	window_get_height()
	)){return "hotbar"}
	
	//
	
	else {return ""}
}

function hotbarSlot(){
	if(mouseCheck() == "hotbar"){
		slot = ((device_mouse_x_to_gui(0) - global.hotbarXBuffer) div INVENTORY_WIDTH) mod 10
		return (slot)
	} else {return (-1)}
}