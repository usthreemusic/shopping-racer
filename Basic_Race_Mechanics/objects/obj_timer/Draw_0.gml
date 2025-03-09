draw_set_color(c_white)
if (t_min =0 && t_sec =0 && t_nth =0) then draw_set_colour(c_red)
draw_set_font(fTimer)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

var t = ""
t += string(t_min) + ":"
if (t_sec>9){t+= ""+string(t_sec)}
if (t_sec<10){t+= "0"+string(t_sec)}
t += ":"
t += string(t_nth)

var fin = "Game Over Dude, game over"

draw_text(500,50,t)
//string(t_min)+":"+string(t_sec)+":"+string(t_nth)
if (t_min =0 && t_sec =0 && t_nth =0) {
	draw_set_color(c_red)
	draw_text(500,500,fin)
}
