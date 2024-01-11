
if (hpCount < 3) {
	vigNormal = lerp(vigNormal,0,0.1);
	vigBoost = lerp(vigBoost,0,0.1);
	vigDanger = lerp(vigDanger,0.6,0.1);

}else if (boost > 0){
	vigNormal = lerp(vigNormal,0,0.1);
	vigBoost = lerp(vigBoost,0.4,0.1);
	vigDanger = lerp(vigDanger,0,0.1);
	
}else{
	vigNormal = lerp(vigNormal,0.5,0.1);
	vigBoost = lerp(vigBoost,0,0.1);
	vigDanger = lerp(vigDanger,0,0.1);

}
draw_sprite_ext(spr_vignette,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),0.5,0.5,0,c_aqua,vigBoost);
draw_sprite_ext(spr_vignette,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),0.5,0.5,0,c_red,vigDanger);
draw_sprite_ext(spr_vignette,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),0.5,0.5,0,c_black,vigNormal);