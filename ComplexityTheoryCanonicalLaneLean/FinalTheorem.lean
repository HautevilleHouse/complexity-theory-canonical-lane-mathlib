import canonicalLaneMathlib.AdmissibleClass
import BridgeLemmas
import GateLemmas

namespace HautevilleHouse
namespace ComplexityTheoryCanonicalLaneLean

def ConstrainedComplexityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_complexity_endgame (A : AdmissibleClass) :
    ConstrainedComplexityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComplexityTheoryCanonicalLaneLean
end HautevilleHouse