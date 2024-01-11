_xminus = lerp(_xminus,0,0.1)
if (vanish) {
image_alpha-=0.1;
if(image_alpha <= 0){
instance_destroy();
}
}