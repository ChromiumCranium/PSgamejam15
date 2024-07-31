//Define standard item array
//ex: calling global.inventory[1][1] gives the SPEED of item in hotbar slot 2

//These should be grouped from weakest to strongest

global.items = [
// --- LEVEL 1 --- //
	//0 = ink bottle
	[
	1.3, //STR
	1, //SPEED
	1.5, //HEALTH
	1, //ISINGREDIENT
	spr_ing_inkBottle //corresponding sprite
	],
	//1 = purple droplet
	[
	0.8,
	3,
	2.5,
	1,
	spr_ing_purpleDroplet
	],
// --- LEVEL 2 --- //
	//2 = cold feather
	[
	2, //STR
	0.8, //SPEED
	1.5, //HEALTH
	1, //ISINGREDIENT
	spr_ing_coldFeather //corresponding sprite
	],
	//3 = gold dust
	[
	4, //STR
	0.9, //SPEED
	0.8, //HEALTH
	1, //ISINGREDIENT
	spr_ing_goldDust //corresponding sprite
	],
]
