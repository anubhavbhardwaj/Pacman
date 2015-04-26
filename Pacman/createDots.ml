(*-----------------------------------------------The l is the mutable list------------------------------------------------------------------*)
let l = ref []

(*------------------------------------store_x appends (x,y) of the dots in x direction to l-------------------------------------------------*)
let store_x start_x end_x start_y= 
	for x = start_x/10 to end_x/10 do
		l:= !l @ [(x*10,start_y)];
done

(*------------------------------------store_x appends (x,y) of the dots in y direction to l-------------------------------------------------*)
let store_y start_y end_y start_x= 
	for y = start_y/10 to end_y/10 do
		l:= !l @ [(start_x,y*10)];	
done;;

(*---------------------------------------------------drawing dots on canvas------------------------------------------------------------------*)
store_x 10 690 10;
store_x 10 690 20;
store_y 30 220 10;
store_y 30 220 20;
store_x 10 690 240;
store_x 10 690 230;
store_y 30 220 240;
store_y 30 220 230;
store_y 30 220 440;
store_y 30 220 430;
store_y 30 220 680;
store_y 30 220 690;
store_x 250 420 110;
store_x 250 420 120;
