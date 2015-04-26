let change x =
match x with
| 1 -> shiftball_hori (-40)
| 2 -> shiftball_hori (40)
| _ -> ();;
