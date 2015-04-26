let draw_rectangle x0 y0 w h =
	let x1 = x0 + w and y1 = y0 + h
	in
	Graphics.moveto x0 y0;
	Graphics.lineto x0 y1; Graphics.lineto x1 y1;
	Graphics.lineto x1 y0; Graphics.lineto x0 y0;
	Graphics.moveto 20 40;;

