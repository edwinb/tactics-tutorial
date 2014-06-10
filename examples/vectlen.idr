vect_eq_length : (xs : Vect n a) -> (ys : Vect m a) -> (xs = ys) -> n = m
vect_eq_length xs _ refl = refl

