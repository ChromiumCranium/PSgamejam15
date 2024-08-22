// create a grid
grid = mp_grid_create(0, 0, room_width/GRID_CELL_SIZE, room_height/GRID_CELL_SIZE, GRID_CELL_SIZE, GRID_CELL_SIZE);

// add walls to the grid
mp_grid_add_instances(grid, obj_collision, true);