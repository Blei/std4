/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Tactic.ShowTerm
import Std.Tactic.GuardMsgs

/-- info: Try this: exact (n, 37) -/
#guard_msgs in example (n : Nat) : Nat × Nat := by
  show_term
    constructor
    exact n
    exact 37

/-- info: Try this: refine (?fst, ?snd) -/
#guard_msgs in example : Nat × Nat := by
  show_term constructor
  repeat exact 42

/-- info: Try this: fun {X} => X -/
#guard_msgs in example : {_a : Nat} → Nat :=
  show_term by
    intro X
    exact X
