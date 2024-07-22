// create a grid
grid = mp_grid_create(0, 0, room_width/32, room_height/32, 32, 32);

// add walls to the grid
mp_grid_add_instances(grid, obj_wall, 0);
