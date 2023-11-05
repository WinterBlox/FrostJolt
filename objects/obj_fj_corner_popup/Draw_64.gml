var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var width_add = 0;

if str_w > 50
{
	width_add = str_w-50
}

draw_sprite_stretched(spr_fj_corner_popup_border, -1, 0 - box_dist, draw_y, 160+width_add, 80);
draw_sprite_ext(spr_fj_gj_bolt, -1, 25 - box_dist, 25 + draw_y, 2, 2, 0, c_white, 1);
draw_text_color(75 - box_dist, 20 + draw_y, title, gj_title_color,gj_title_color,gj_title_color,gj_title_color,1);
draw_text(75 - box_dist, 40 + draw_y, txt);





