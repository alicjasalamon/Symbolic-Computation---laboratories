(* join *)
let rec join s l = match l with
	| [] -> ""
	| [a] -> a
	| h::t -> h^s^(join s t)

(* explicit join *)
let rec joinExplicit s = fun l -> match l with
	| [] -> ""
	| [a] -> a
	| h::t -> h^s^(joinExplicit s t)

(*csv*)
let csv = joinExplicit ";"

(*inc*)
let inc=(+) 1

(*flip*)
let flip f = fun x y -> f y x

(*dec*)
let dec = flip (-) 1 

(*curry*)
let curry f = fun x y -> f (x, y)

(*uncurry*)
let uncurry f = fun (x,y) ->f x y

(**)
