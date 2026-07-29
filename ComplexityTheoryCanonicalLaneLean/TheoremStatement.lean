import HautevilleHouse.ComplexityTheoryCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ComplexityTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := sourceTheoremBoundary.claimBoundary,
    manifoldConstrainedStatement := "NP-completeness constraint: the admissible class closes under polynomial reduction and witness verification within the complexity-theoretic lane.",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary" }

end ComplexityTheoryCanonicalLaneLean
end HautevilleHouse