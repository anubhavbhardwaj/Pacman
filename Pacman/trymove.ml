#load "graphics.cma";;
#load "unix.cma";;

let player = [|40;80;10|]

let init () = 
  Graphics.open_graph " 800x250";
  Graphics.remember_mode true;
  Graphics.set_color 100;
(  Graphics.fill_circle player.(0) player.(1) player.(2))

let check button = 
	match button with
	'w' -> (player.(1) <- player.(1) + 20)
	|'s' -> (player.(1) <- player.(1) - 20)
	|'a' -> (player.(0) <- player.(0) - 20)
	|'d' -> (player.(0) <- player.(0) + 20)
	
	

let run () = 
  while true do
    let s = Graphics.wait_next_event [
        Graphics.Button_down;
        Graphics.Key_pressed
      ] in
    let bo = Graphics.key_pressed () in
    if not bo then check s.Graphics.key;
    Graphics.clear_graph ();
    Graphics.fill_circle player.(0) player.(1) player.(2)
  done


let () =
  init ();
  run ()
