
nat_induction : (P : Nat -> Type) ->
                (P Z) ->
                ((k : Nat) -> P k -> P (S k)) ->
                (x : Nat) -> P x
nat_induction P p_Z p_S Z = p_Z
nat_induction P p_Z p_S (S k) = p_S k (nat_induction P p_Z p_S k)

plus_ind : Nat -> Nat -> Nat
plus_ind n m = nat_induction (\x => Nat)
                             m
                             (\k, k_rec => S k_rec)
                             n
