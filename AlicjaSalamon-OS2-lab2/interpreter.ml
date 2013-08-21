open Ast

exception Interpretation_error

(*inicjalizowanie srodowiska pusta lista*)
let emptyEnv () = [];;
				
(*znajdz zmienną w srodowisku*)
let rec szukaj_zmiennej env szuk = match env with
				| [] -> failwith (" nie ma takiej zmiennej!")
				| (zm, war)::tail -> if szuk = zm then war else szukaj_zmiennej tail szuk;;

(*albo usun*)
let rec usun_zmienna env szuk = match env with
				| [] -> []
				| (zm, war)::tail -> if zm <> szuk then ((zm, war)::[])@(usun_zmienna tail szuk) else [];;
				
(*obliczaj*)
let rec eval wyr env = match wyr with
				| Const a 		-> a
				| Var a 			-> szukaj_zmiennej env a
  			| Add (a, b) 	-> eval a env +. eval b env
				| Mult (a, b) -> eval a env *. eval b env
				| Sub (a, b) 	-> eval a env -. eval b env
				| Div (a, b) 	-> eval a env /. eval b env
				| Minus a 		-> -. eval a env 
				| _ 					-> failwith ("nie zaimplementowane");;
				
	
let interpret env stmt = match stmt with 
				| Eval wyr 					-> Printf.printf "%.1f\n" (eval wyr env); env
				| Let (nazwa, wyr) 	-> 
								let env2 = (nazwa, (eval wyr env))::(usun_zmienna env nazwa) in 
								Printf.printf "%s=" (nazwa); 
								Printf.printf "%.1f\n" (eval wyr env2); 
								env2
				| _ 								->  failwith ("nie zaimplementowane");;

