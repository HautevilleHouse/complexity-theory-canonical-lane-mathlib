import ComplexityTheoryCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComplexityTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev BitString := List Bool
abbrev Language := Set BitString

structure VerificationProcedure where
  accepts : BitString → BitString → Bool

structure ComplexityClassicalObject where
  language : Language
  witnessRelation : BitString → BitString → Prop
  bound : ℕ

structure ComplexityAdmittedObject where
  classicalObject : ComplexityClassicalObject
  projectedLanguage : Language
  verifier : VerificationProcedure

structure ComplexityEndgameState where
  admittedObject : ComplexityAdmittedObject

def DecidesVerifier (V : VerificationProcedure) (L : Language) : Prop :=
  ∀ (x : BitString), (∃ w : BitString, V.accepts x w = true) ↔ x ∈ L

end ComplexityTheoryCanonicalLaneLean
end HautevilleHouse
