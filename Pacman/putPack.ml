let player = [|40;80;10|]

let player_previous = [|40;80;10|]

let init () = 
	Graphics.clear_graph ();
	draw_rectangle 160 60 50 70;
	draw_rectangle 460 60 50 70;
	draw_rectangle 290 40 100 50;
	draw_rectangle 290 130 100 50;
	draw_rectangle 580 70 40 100;
	draw_rectangle 70 70 40 100;
	
	Graphics.fill_circle player.(0) player.(1) player.(2)



let check button = 
	match button with
	'w' ->  (player.(1) <- (player.(1) + 20);player_previous.(1) <- player.(1) - 20)
	|'s' -> (player.(1) <- player.(1) - 20; player_previous.(1) <- player.(1) + 20)
	|'a' -> (player.(0) <- player.(0) - 20; player_previous.(0) <- player.(0) + 20)
	|'d' -> (player.(0) <- player.(0) + 20; player_previous.(0) <- player.(0) - 20)
	
	
let direction_x current previous = 
	if (current - previous) > 0 then 1
	else 2

let direction_y current previous = 
	if (current - previous) > 0 then 3
	else 4

let run () = 
  while true do
    let s = Graphics.wait_next_event [
        Graphics.Button_down;
        Graphics.Key_pressed
      ] in
    let bo = Graphics.key_pressed () in
    if not bo then check s.Graphics.key;
	if (player.(0) > 800) then (player.(0) <- 795); 
	if (player.(0) < 0) then (player.(0) <- 5);
	if (player.(1) < 0) then (player.(1) <- 5);
	if (player.(1) > 250) then (player.(1) <- 245);
	
	if(player.(0) > 160 && player.(1) > 60 && player.(1) < 130 && player.(0)< 210 )
			then (player.(0) <- player_previous.(0);player.(1) <- player_previous.(1));	
			
	if(player.(0) > 460 && player.(1) > 60 && player.(1) < 130 && player.(0)< 510 )
			then (player.(0) <- player_previous.(0);player.(1) <- player_previous.(1));	
			
	if(player.(0) > 290 && player.(1) > 40 && player.(1) < 90 && player.(0)< 390 )
			then (player.(0) <- player_previous.(0);player.(1) <- player_previous.(1));	
			
	if(player.(0) > 290 && player.(1) > 130 && player.(1) < 180 && player.(0)< 390 )
			then (player.(0) <- player_previous.(0);player.(1) <- player_previous.(1));	
			
	if(player.(0) > 580 && player.(1) > 70 && player.(1) < 170 && player.(0)< 640 )
			then (player.(0) <- player_previous.(0);player.(1) <- player_previous.(1));
			
	if(player.(0) > 70 && player.(1) > 70 && player.(1) < 170 && player.(0)< 110 )
			then (player.(0) <- player_previous.(0);player.(1) <- player_previous.(1));		
	init()  
	
  done


let () =
  init ();
  run ()
