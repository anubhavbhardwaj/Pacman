#use "/home/bhardwaj/Desktop/Pacman/libs.ml";;
let player=[|20;30;10|];;
let check = [|true;false|];;
let xx = true;;
Graphics.open_graph " 800x250";;
Graphics.remember_mode true;;
Graphics.set_color 100;;
Graphics.foreground;;
#use "/home/bhardwaj/Desktop/Pacman/createDesign.ml";;
#use "/home/bhardwaj/Desktop/Pacman/putPack.ml";;
#use "/home/bhardwaj/Desktop/Pacman/motion.ml";;
#use "/home/bhardwaj/Desktop/Pacman/change.ml";;
#use "/home/bhardwaj/Desktop/Pacman/action.ml";;
#use "/home/bhardwaj/Desktop/Pacman/MoveBall.ml";;
#use "/home/bhardwaj/Desktop/Pacman/createDots.ml";;

createdots_y 170 230 150;;  
createdots_x 150 180 240 ;;
