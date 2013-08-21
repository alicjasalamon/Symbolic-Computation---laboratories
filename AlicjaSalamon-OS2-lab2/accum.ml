(*simple reverse*)
let rec simpleReverse l = match l with
	| [] -> []
	| h::t -> (simpleReverse t) @ [h] 

(*
let rec reverseAccum l accum = match l with
	| [] -> accum
	| h::t -> reverseAccum t (h::accum)
*)

let reverse l =
	let rec reverseAccum l accum = match l with
		| [] -> accum
		| h::t -> reverseAccum t (h::accum)
	in reverseAccum l []
	
(*reverseInt*)
let reverseInt x =
				let rec reverseAccum x accum = 
					if x==0 then accum 
					else reverseAccum(x/10) (accum*10 + x mod 10)
		in 	reverseAccum x 0