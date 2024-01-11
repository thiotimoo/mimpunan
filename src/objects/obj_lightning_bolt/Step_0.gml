if (destroyed) {
alpha_box = lerp(alpha_box,0,0.1)
if (alpha_box < 0.1) instance_destroy();
}else{
_image_xscale = lerp(_image_xscale,1.5,0.1)
alpha_box = lerp(alpha_box,0.5,0.3)
}
x=x+random_range(-2,2)
