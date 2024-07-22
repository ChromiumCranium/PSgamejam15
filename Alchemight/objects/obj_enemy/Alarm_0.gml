path_delete(path);
path = path_add();

// where to go
target_x = obj_player.x;
target_y = obj_player.y;

// use the grid, make a path
mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, 1);

// follow path
path_start(path, 2, path_action_stop, true);

// loop
alarm_set(0,60);