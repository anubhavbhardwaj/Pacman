(*-------------------------------------It creates the dots on the canvas for the pacman to eat------------------------------------------------*)
let rec lookup list =  
	match list with 
	[] ->()
	|h::t -> let (x,y) = h in
	 (Graphics.fill_circle x y 5);
		lookup t;;
