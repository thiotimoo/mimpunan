#macro ANSWER_MAX 4
#macro ANSWER_NONE "nn"
#macro ANSWER_SIMILAR "ss"
#macro ANSWER_ONE "a1"
#macro ANSWER_TWO "a2"
#macro tile_width 20
#macro tile_height 20

enum directions {
	right,
	up,
	left,
	down
}

global.components = [];
global.components[directions.right] = [1,0];
global.components[directions.up] = [0,-1];
global.components[directions.left] = [-1,0];
global.components[directions.down] = [0,1];