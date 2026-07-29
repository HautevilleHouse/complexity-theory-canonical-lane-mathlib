import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexityTheoryCanonicalLaneLean

structure ComplexityAdmittedObject where
  resourceBound : String
  problemClass : String
  reductionBase : String

structure AdmissibleClass where
  lane : ComplexityAdmittedObject
  complexityBoundDecided : DecidesProblem lane.problemClass lane.resourceBound
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DecidesProblem (problemClass : String) (bound : String) : Prop := True

def admittedClosure (A : AdmissibleClass) : Prop :=
  DecidesProblem A.lane.problemClass A.lane.resourceBound ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexityTheoryCanonicalLaneLean
end HautevilleHouse