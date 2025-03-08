t_nth -= 1;

if (t_nth = -1) {
	t_nth = 9;
	t_sec -= 1;
}
if (t_sec = -1) {
	t_sec = 59;
	t_min -= 1;
}
if !(t_nth = 0 && t_sec = 0 && t_min = 0) {
	alarm[0] = 6
} 