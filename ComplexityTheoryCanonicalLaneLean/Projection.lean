import ComplexityTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexityTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def complexityProjection : Projection ComplexityEndgameState :=
  { toFun := λ x => x
    idempotent := by intro x; rfl }

theorem complexity_projection_idempotent (x : ComplexityEndgameState) :
    complexityProjection.toFun (complexityProjection.toFun x) = complexityProjection.toFun x := by
  exact complexityProjection.idempotent x

end ComplexityTheoryCanonicalLaneLean
end HautevilleHouse
