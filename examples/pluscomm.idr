
plus_commutes_Z : m = plus m 0
plus_commutes_Z {m = Z} = refl
plus_commutes_Z {m = (S k)} = let rec = plus_commutes_Z {m=k} in
                                  rewrite sym rec in refl

plus_commutes_S : (k : Nat) -> (m : Nat) -> S (plus m k) = plus m (S k)
plus_commutes_S k Z = refl
plus_commutes_S k (S j) = rewrite plus_commutes_S k j in refl

total
plus_commutes : (n : Nat) -> (m : Nat) -> n + m = m + n
plus_commutes Z m = plus_commutes_Z
plus_commutes (S k) m = rewrite plus_commutes k m in (plus_commutes_S k m)

