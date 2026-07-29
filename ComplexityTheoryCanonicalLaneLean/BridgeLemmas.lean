import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexityTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DecidesProblem A.lane.problemClass A.lane.resourceBound

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.complexityBoundDecided

end ComplexityTheoryCanonicalLaneLean
end HautevilleHouse