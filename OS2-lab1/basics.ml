(*operacje na zmiennych*)
let x = 5
let y = 5.0

(*proste funkcje*)
let addii = fun x y -> x + y
let addff = fun x y -> x +. y
let addif = fun x y -> float x +. y

let abs = fun x -> if x > 0 then x else -x
let sgn = fun x -> if x > 0.0 then 1 else if x = 0.0 then 0 else -1

(*funcje rekurencyjne*)
let rec fib = fun x -> if x < 2 then 1 else fib(x-1) + fib(x-2) 

(*typy algebraiczne*)
type transformation =
	| Sx 
	| Sy
	| So
	| T of float * float
	| Jo of float

(*pattern matching*)
let transform t (x, y)= match t with
| Sx -> (-.x, y)
| Sy -> (x, -.y)
| So -> (-.x, -.y)
| T (a, b) -> (x +. a, y +. b)
| Jo a -> (x *.a, y *. a)

