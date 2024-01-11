if (room != rm_skin && room != rm_menu) visible = false else visible = true
if (room == rm_skin) {
x = lerp(x,140,0.1)
y = lerp(y,180,0.1)
image_xscale = lerp(image_xscale,5,0.1)
image_yscale = lerp(image_yscale,5,0.1)
}else{
x = lerp(x,90,0.1)
y = lerp(y,133,0.1)
image_xscale = lerp(image_xscale,1,0.1)
image_yscale = lerp(image_yscale,1,0.1)
}
