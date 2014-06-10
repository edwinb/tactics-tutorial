twoplustwo_eq_four : 2 + 2 = 4
twoplustwo_eq_four = refl

plus_reduces_Z : (m : Nat) -> plus Z m = m
plus_reduces_Z m = refl

plus_reduces_Sk : (k, m : Nat) -> plus (S k) m = S (plus k m)
plus_reduces_Sk k m = refl
