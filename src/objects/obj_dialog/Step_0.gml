if (destroyed) {
	
	image_alpha = lerp(image_alpha, 0 , 0.1);
	image_xscale = lerp(image_xscale, 0.5 , 0.1);
	image_yscale = lerp(image_yscale, 0.5 , 0.1);
	dim_alpha = lerp(image_alpha, 0 , 0.1);
	if (image_alpha < 0.1) {
		action();
		with button instance_destroy();
		instance_destroy();
	}
} else {
	image_alpha = lerp(image_alpha, 1 , 0.1);
	image_xscale = lerp(image_xscale, 1 , 0.1);
	image_yscale = lerp(image_yscale, 1 , 0.1);
	dim_alpha = lerp(image_alpha, 0.5 , 0.1);
}