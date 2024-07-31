/// @description Define items in chest

//array items is an array of indices for global.items
items = array_create(0)
drops = 0

//if drops were passed from kill script, add them to items
if(is_array(drops)) items = array_concat(items,drops)