if (!credit_mode)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_font(global.font_main)
draw_set_color(image_blend)
draw_text_outline_ext(x, y, text,string_height("M") + 2,160)
draw_set_valign(fa_left)
draw_set_halign(fa_top)
draw_set_color(c_white)