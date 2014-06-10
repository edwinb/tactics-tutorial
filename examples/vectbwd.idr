append : Vect n a -> Vect m a -> Vect (m + n) a
append []        ys ?= {app_nil} ys
append (x :: xs) ys ?= {app_cons} x :: append xs ys

app_cons a m n x xs ys value = ?app_cons_rhs

