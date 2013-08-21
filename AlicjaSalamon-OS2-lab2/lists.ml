(*glowa*)

let hd l = match l with 
	| h::_ -> h
	| [] -> invalid_arg "bardzo nieladnie!"

(*ogon*)
let tl l = match l with 
	| _::t -> t
	| [] -> []

(*int -> string*)
let rec str l = match l with
	| [] -> []
	| h::t -> (string_of_int h)::(str t)

(*suma*)
let rec sum l = match l with
	| [] -> 0
	| h::t -> h + (sum t);;

(*ujemne*)
let rec negatives l = match l with
	| [] -> []
	| h::t -> if h<0 then h::(negatives t) else (negatives t)

(*minimalna*)
let rec min l = match l with
	| [] -> invalid_arg "egweg"
	| [a] -> a 
	| h::t -> if h < (min (t)) then h else (min(t))

(*stringi z wielkiej litery*)
let rec capitalized list = match list with
	| [] -> []
	| h::t -> if String.capitalize(h) <> h then capitalized(t) else h::capitalized(t);;

(*pierwsze elementy*)
let rec first l = match l with
	| [] -> []
	| (a,_)::t -> a::(first t) 

(*konkatenacja*)
let rec append a b = match a with
	| [] -> b
	| h::t -> h::(append t b)