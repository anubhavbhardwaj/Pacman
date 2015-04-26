let anubhav = 10;;

let box_conditions box_start_x box_start_y box_end_x box_end_y player_previous= 
	if(player.(0) > box_start_x && player.(1) > box_start_y && player.(1) < box_end_y && player.(0)< box_end_x)
			then (player.(0) <- player_previous.(0);player.(1) <- player_previous.(1));


let boundry_conditions player =
	print_string "maa_ki_chood";
	if (player.(0) > 800) then (player.(0) <- 795) 
	else if (player.(0) < 0) then (player.(0) <- 5) 
	else if (player.(1) < 0) then (player.(1) <- 5)
	else if (player.(1) > 250) then (player.(1) <- 245)
