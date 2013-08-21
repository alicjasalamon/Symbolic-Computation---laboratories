val x : int
val y : float
val addii : int -> int -> int
val addff : float -> float -> float
val addif : int -> float -> float
val abs : int -> int
val sgn : float -> int
val fib : int -> int
type transformation = Sx | Sy | So | T of float * float | Jo of float
val transform : transformation -> float * float -> float * float
