//surf = surface_create(room_width, room_height);
snap = 20;
countData = 0;
currentData = 0;
timerAtk = noone
randomAtk = noone
scrAtk = noone
no_timer = false;
generate_live = false;
generate_boost = false;
generate_shield = false;
aColor = c_white;
bColor = c_white;
cColor = c_yellow;
hint = noone
/*
var i = 0;
venn_pos_x[i] = x
venn_pos_y[i] = y
venn_width[i] = range_width / 2 + 20
venn_height[i] = range_height
venn_color[i] = c_blue
i++;

venn_pos_x[i] = x + range_width / 2 - 20
venn_pos_y[i] = y
venn_width[i] = range_width/2 + 20
venn_height[i] = range_height
venn_color[i] = c_red
i++;
*/
range_width = snap * image_xscale
range_height = snap * image_yscale

range_random_x = x - 10
range_random_x2 = range_random_x + range_width
range_random_y = y - 10
range_random_y2 = range_random_y + range_height

/*
a1 = Jawaban 1
a2 = Jawaban 2
nn = Tidak Terpakai
ss = Kesamaan
*/

// (Block Value) - (Block Category) - (Block Color)
var_alphabet = ["S", "A", "B"]
statements = ["himpunan bilangan bulat positif lebih kecil dari 10","< 5","> 3"]
semesta = ["1-a1-r", "2-a1-r", "3-a1-r", "4-ss-r", "5-a2-r", "6-a2-r", "7-a2-r", "8-a2-r", "9-a2-r"]

level = 2;

timerMax = 120;
timer = timerMax;
generate_timer = 7
