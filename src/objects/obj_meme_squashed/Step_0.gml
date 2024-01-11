
if (obj.image_yscale > target_yscale) {
if (delay_per_step > 0){
	delay_per_step --;
}else{
	delay_per_step = 3;
	obj.image_yscale -= speed_scale
	obj.image_xscale += speed_scale
}
} else {
	action();
	instance_destroy();
}