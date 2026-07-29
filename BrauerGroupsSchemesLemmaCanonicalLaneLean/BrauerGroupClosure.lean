import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.brauerGroupWellDefined

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.brauerGroupEvidence.wellDefinedTensorProduct

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse