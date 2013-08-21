(*silnia*)

let rec factorial n = if n=0 then 1 else n*factorial(n-1)

(*konwersja*)

let rec int2bin n = match n with
	| 0 -> string_of_int 0
	| 1 -> string_of_int 1
	| _ -> int2bin (n/2) ^ string_of_int (n mod 2)

(*potegowanie*)

let rec power x n = match n with
| 0 -> 1
| 1 -> n
| _ -> let y = power x (n/2) in 
					if n mod 2 = 1 then y * y*n else y*y