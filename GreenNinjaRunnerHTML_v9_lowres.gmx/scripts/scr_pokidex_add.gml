///scr_pokidex_add( name , sprite , description , good)
//adds an item to the pokidex

global.pokidex_name[global.pokidex_size] = argument0
global.pokidex_spr[global.pokidex_size] = argument1
global.pokidex_description[global.pokidex_size] = argument2
global.pokidex_found[global.pokidex_size] = 0
global.pokidex_good[global.pokidex_size] = argument3
if global.pokidex_good[global.pokidex_size] > 0
global.good_items++
else
global.bad_items++

global.pokidex_size++
