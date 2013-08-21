type 'a btree =
	| Nil
	| Node of 'a * 'a btree * 'a btree

let rec insert t x = match t with	
	| Nil -> Node (x, Nil, Nil)
	| Node (y, left, right) -> 
		if x <= y then Node (y, insert left x, right)
		else Node (y, left, insert right x)
		
(*buildTree1*)
let buildTree1 () = Node(5, Node(3, Node(1, Nil, Nil), Node(4, Nil, Nil)), Node(8, Nil, Nil))

(*buildTree2*)
let buildTree2 () = insert(insert(insert(insert(insert Nil 5) 3) 1) 4) 8

(*memeber*)
let rec member t y = match t with
				| Node (x, left, right) -> if x == y then true else if y < x then member left y else member right y
				| Nil -> false

(*keys*)
let rec keys t = match t with
				| Nil -> []
				| Node (x, left, right) -> List.append (List.append (keys left) [x]) (keys right)
				
(*height*)
let rec height t = match t with
				| Nil -> -1
				| Node (x, left, right) -> let max (x, y) = if x > y then x else y in 1 + max(height left, height right);;

(*size*)
let rec size t = match t with
				| Nil -> 0
				| Node (x, left, right) -> 1 + size left + size right;;
