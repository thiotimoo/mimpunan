// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getBlockData(item){
var data = string_split(item, "-");
return data;
}

function getBlockCountData(semesta){
var length, count;
length = array_length_1d(semesta);
count = array_create(ANSWER_MAX);

for (var i = 0; i < length; i++) {
    blockData = getBlockData(semesta[i]);
    count[getBlockTypeID(blockData[1])]++;
}
return count;
}

function getBlockTypeID(block_string_id){
	switch (block_string_id){
		case ANSWER_NONE:
            return 0;
        break;
        case ANSWER_SIMILAR:
            return 1;
        break;    
        case ANSWER_ONE:
            return 2;
        break;
        case ANSWER_TWO:
            return 3;
        break;
    }
}

function getBlockColorFromData(block_color_str){
	switch (block_color_str){
		case "w":
		return c_white;
		break;
		
		case "b":
		return c_aqua;
		break;
		case "m":
		return c_red;
		break;
		
		case "p":
		return c_purple;
		break;
		
		
		case "r":
		randomize();
		return choose(c_white, c_lime, c_orange, c_red, c_teal, c_yellow,c_aqua);
		break;
    }
}

function getBlockIDType(block_int_id){
	switch (block_int_id){
        case 0:
            return ANSWER_NONE;
        break;
        case 1:
            return ANSWER_SIMILAR;
        break;    
        case 2:
            return ANSWER_ONE;
        break;
        case 3:
            return ANSWER_TWO;
        break;
    }	
}

function string_split(str, divider) {
	var len = string_length(str);
	
	var subStr = "";
	var arrIndex = 0;
	var arr;
	for (var i = 1; i <= len; i++)
	{
		var char = string_char_at(str, i);
		if (char != divider)
		{
			//add char to substring
			subStr += char;
		}
		else
		{
			//ensure substring is not empty. 
			if(string_length(subStr) > 0)
			{
				//add substring to array
				arr[arrIndex] = subStr;
				arrIndex++;
				//clear substring
				subStr = "";
			}
		}
	}
		//Add final substring to array
		if(string_length(subStr) > 0)
		{
			arr[arrIndex] = subStr;
		}
	return arr;
}