// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_quest(_quest_id){
	hide = false;
	track = noone;
	switch(_quest_id){
		case "npc jojo":
		quest_name = "Cari Jonathan di depan sekolah!"
		track = obj_npc_jojo;
		break;
		
		case "solve jojo":
		quest_name = "Selesaikan Diagram Venn yang diberikan Jonathan"
		track = obj_npc_jojo;
		break;
		
		case "story start":
		quest_name = "Story Start"
		hide = true;
		break;
		
		case "story exam":
		quest_name = "Story Exam"
		hide = true;
		break;
	}
}