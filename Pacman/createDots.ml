let createdots_y start_y end_y start_x= 
	for y = start_y/10 to end_y/10 do

	let k = y * 10
	in Graphics.fill_circle start_x k 5
done

let createdots_x start_x end_x start_y= 
	for x = start_x/10 to end_x/10 do

	let k = x * 10
	in Graphics.fill_circle k start_y  5
done

