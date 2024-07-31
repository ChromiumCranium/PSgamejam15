window_set_size(1280,720)

//create all the special little Mages with their special little stats
stats = {
	strengthMod : 2, //base strength and health mods in macros
	healthMod : 2
}
instance_create_layer(450,370,"entityLayer",obj_mageEnemy,stats)

stats1 = {
	strengthMod : 3.5, //base strength and health mods in macros
	healthMod : 0.5
}
instance_create_layer(1350,700,"entityLayer",obj_mageEnemy,stats1)

//create all the special little chests with their special little items
items1 = {
	drops : [0,1] //indices for global.items
}
instance_create_layer(300,850,"entityLayer",obj_chest,items1)

items2 = {
	drops : [1,2] //indices for global.items
}
instance_create_layer(1100,650,"entityLayer",obj_chest,items2)

items3 = {
	drops : [0,2] //indices for global.items
}
instance_create_layer(400,350,"entityLayer",obj_chest,items3)