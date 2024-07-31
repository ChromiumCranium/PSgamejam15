window_set_size(1280,720)

//create all the special little Mages with their special little stats
stats = {
	strengthMod : 2, //base strength and health mods in macros
	healthMod : 0.5
}
instance_create_layer(200,600,"entityLayer",obj_mageEnemy,stats)

//create all the special little chests with their special little items
items1 = {
	drops : [0,1] //indices for global.items
}
instance_create_layer(970,400,"entityLayer",obj_chest,items1)
