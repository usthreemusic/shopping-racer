draw_set_font(font_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y, item_name);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite_ext(spr_id, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.8);