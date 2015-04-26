let appendInList l t =
	t::l;;
(*---------------------------This function checks whether the given tuple is there in the list or not----------------------------------------*)
let find lst v =    
	let rec innerFind lst v i =
		match lst with 
			[] -> -1
				| h :: t ->
				if h = v then i
				else (innerFind t v (i + 1))
				in 
				(innerFind lst v 0);;

(*----------------------------deleteAtIndex deletes the tuple from the given list at the given index-----------------------------------------*)
let deleteAtIndex list index =
		let rec innerDeleteAtIndex list index acc count = 
			match list with 
			|[] -> reverse acc
			| h :: t -> if count = index 
						then innerDeleteAtIndex t index acc (count+1)
						else innerDeleteAtIndex t index  (h :: acc) (count+1)				
			and 
			
			reverse l =	
				let rec rev acc_list l = 
					match l with
					[] -> acc_list
					| h :: t -> rev (h :: acc_list) t
				in
				rev [] l;
			in
			if index = -1 then
				list
			else
			innerDeleteAtIndex list index [] 1;;
			
