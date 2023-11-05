box_dist = lerp(box_dist, dist_targ, 0.25);
draw_y = lerp(draw_y, (80 * (popup_no)), 0.25);

if box_dist >= 1000 instance_destroy();



