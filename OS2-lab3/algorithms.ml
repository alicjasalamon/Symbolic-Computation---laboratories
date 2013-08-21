let rec map f l = match l with
	| [] -> []
	| h::t -> (f h)::(map f t)

let rec filter f l = match l with
	| [] -> []
	| h::t -> if f h then h::(filter f t) else filter f t

let rec fold_left f a l = match l with
	| [] -> a
	| h::t -> fold_left f (f a h ) t

let rec fold_right f a l = match l with 
	| [] -> []
	| h::t -> f h (fold_right f t a)

let str = map (fun x -> string_of_int x)

let sum = fold_left (fun x y -> x + y) 0