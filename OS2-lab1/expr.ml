(*reprezentacja wyrazen*)
type expr =
	| Int of int
	| Float of float
	| Add of expr * expr
	| Sub of expr * expr
	| Mult of expr * expr
	| Div of expr * expr
	| Minus of expr

(*wartosciowanie wyrazen*)
let rec eval e = match e with
| Int a -> float(a)
| Float a -> a
| Add (e1, e2) -> eval(e1) +. eval(e2)
| Sub (e1, e2) -> eval(e1) -. eval(e2)
| Mult (e1, e2) -> eval(e1) *. eval(e2)
| Div (e1, e2) -> eval(e1) /. eval(e2)
| Minus e1 -> -.eval(e1)


(*zadanie domowe 1*)

let rec simplify_expr exp = match exp with
| Add(a,b) 		-> if eval(a)=0.0 then simplify_expr(b) else if eval(b)=0.0 then simplify_expr(a) else Add(simplify_expr(a), simplify_expr(b))
| Mult(a,b)		-> if eval(a)=1.0 then simplify_expr(b) else if eval(b)=1.0 then simplify_expr(a) else Mult(simplify_expr(a), simplify_expr(b))
| Div(a,b) 		-> Div(simplify_expr(a), simplify_expr(b))
| Sub(a,b) 		-> Sub(simplify_expr(a), simplify_expr(b))
| Int(a) 			-> exp
| Float(a) 		-> exp
| Minus(a) 		-> exp

(*zadanie domowe 2*)

let rec print_expr e = match e with
	| Int a 			-> string_of_int a
	| Float b 		-> string_of_float b
	| Add (a,b) 	-> "(" ^ (print_expr a) ^ "+" ^ (print_expr b) ^ ")"
	| Sub (a,b) 	-> "(" ^ (print_expr a) ^ "-" ^ (print_expr b) ^ ")"
	| Mult (a,b) 	-> "(" ^ (print_expr a) ^ "*" ^ (print_expr b) ^ ")"
	| Div (a,b) 	-> "(" ^ (print_expr a) ^ "/" ^ (print_expr b) ^ ")"
  | Minus (a)	 	-> "(" ^ (print_expr a) ^ ")"

