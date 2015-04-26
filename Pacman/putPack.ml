(*------------------------------------------Initial cordinates of the player/pacman---------------------------------------------------------*)
let player = [|40;80;10|]
(*-----------------------------------------Previous cordinates of the player/pacman---------------------------------------------------------*)
let player_previous = [|40;80;10|]
(*------------------------------------------Initial cordinates of the monster1--------------------------------------------------------------*)
let monster1 = [|235;50|]
(*------------------------------------------Initial cordinates of the monster2--------------------------------------------------------------*)
let monster2 = [|40;210|]
(*--------------------------------------------Reference value for while loop----------------------------------------------------------------*)
let reference = [|true|]

(*-----------------------------This function draws the whole canvas whenever the player/pacman moves----------------------------------------*)
let init () = 
	Graphics.clear_graph ();
	Graphics.set_color Graphics.yellow;
	lookup !l;
	
	Graphics.set_color Graphics.red;
	putmonster monster1;
	putmonster monster2;
	
	
	draw_rectangle 160 60 50 70;
	draw_rectangle 460 60 50 70;
	draw_rectangle 290 40 100 50;
	draw_rectangle 290 130 100 50;
	draw_rectangle 580 70 40 100;
	draw_rectangle 70 70 40 100;
	
	Graphics.set_color (Graphics.blue);
	Graphics.fill_circle player.(0) player.(1) player.(2)
(*----------------------------checkbutton is used check the key pressed and accordingly move pacman----------------------------------------*)

let check button = 
	match button with
	'w' ->  (player.(1) <- player.(1) + 5; player_previous.(1) <- player.(1) - 5)
	|'s' -> (player.(1) <- player.(1) - 5; player_previous.(1) <- player.(1) + 5)
	|'a' -> (player.(0) <- player.(0) - 5; player_previous.(0) <- player.(0) + 5)
	|'d' -> (player.(0) <- player.(0) + 5; player_previous.(0) <- player.(0) - 5)
	| _ -> ()
	
let direction_x current previous = 
	if (current - previous) > 0 then 1
	else 2

let direction_y current previous = 
	if (current - previous) > 0 then 3
	else 4



(*----------------------------------This function is used to check the boundary conditions for pacman---------------------------------------*)
let run () = 
  while reference.(0) do
    let s = Graphics.wait_next_event [
        Graphics.Button_down;
        Graphics.Key_pressed
      ] in
    let bo = Graphics.key_pressed () in
    if not bo then check s.Graphics.key;
	if (player.(0) > 700) then (player.(0) <- 695); 
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
			
	if((List.mem (player.(0),player.(1)) !l)) then 
		l:= deleteAtIndex !l ((find !l (player.(0) , player.(1)))+1);
			
	monster1.(1) <- ((monster1.(1)+5) mod 250);
	monster2.(0) <- ((monster2.(0)+5) mod 700);		
	
	if((((monster1.(0)-player.(0)) * (monster1.(0)-player.(0))) +  ((monster1.(1)-player.(1)) * (monster1.(1)-player.(1)))) < 4*10*10)
	 then print_string "player dies";
	if((((monster1.(0)-player.(0)) * (monster1.(0)-player.(0))) +  ((monster1.(1)-player.(1)) * (monster1.(1)-player.(1)))) < 4*10*10)
	 then reference.(0) <- false;
	 
	 if((((monster2.(0)-player.(0)) * (monster2.(0)-player.(0))) +  ((monster2.(1)-player.(1)) * (monster2.(1)-player.(1)))) < 4*10*10)
	 then print_string "player dies";
	if((((monster2.(0)-player.(0)) * (monster2.(0)-player.(0))) +  ((monster2.(1)-player.(1)) * (monster2.(1)-player.(1)))) < 4*10*10)
	 then reference.(0) <- false;
	
	if((List.length !l) = 0) then print_string "user wins"; 
	if((List.length !l) = 0) then reference.(0) <- false;
	
	init()  
	
  done;;

(*--------------------------------------------Acting as a main function and calls init and run----------------------------------------------*)
let () =
  init ();
  run ()
