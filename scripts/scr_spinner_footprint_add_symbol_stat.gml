///scr_spinner_footprint_add_symbol_stat(player,symbol state, weight, weight2, weight3, weight4, weight5)

var player = argument0;
var state = argument1;
var w = argument2;
var w2 = argument3;
var w3 = argument4;
var w4 = argument5;
var w5 = argument6; 

var input = 0;

input[symbolStatData.weight] = w;
input[symbolStatData.weightMatch2] = w2;
input[symbolStatData.weightMatch3] = w3;
input[symbolStatData.weightMatch4] = w4;
input[symbolStatData.weightMatch5] = w5;

ds_map_add(symbolsStats[player],state,input)
ds_list_add(symbolTypes[player],state)






