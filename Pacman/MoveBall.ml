let rec move xx = 
if (xx = true)
then
	let s = Graphics.wait_next_event
			[Graphics.Button_down; Graphics.Key_pressed]
			and bo=Graphics.key_pressed ()
		in if not bo then handle_char s.Graphics.key ;
