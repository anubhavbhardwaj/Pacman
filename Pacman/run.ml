
#use "/home/bhardwaj/Desktop/Pacman/libs.ml";;

let player=[|20;30;10|];;
let check = [|true;false|];;
let xx = true;;

Graphics.open_graph " 700x250";;
Graphics.remember_mode true;;
Graphics.set_color 100;;
Graphics.foreground;;

let monster1 =  [|235;50|];

#use "/home/bhardwaj/Desktop/Pacman/Utility.ml";;
#use "/home/bhardwaj/Desktop/Pacman/putDots.ml"
#use "/home/bhardwaj/Desktop/Pacman/createDots.ml";;
#use "/home/bhardwaj/Desktop/Pacman/createDesign.ml";;
#use "/home/bhardwaj/Desktop/Pacman/PutMonsters.ml";;
#use "/home/bhardwaj/Desktop/Pacman/putPack.ml";;

