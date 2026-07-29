import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupSchemesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BrauerScheme
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BrauerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupSchemesLemmaCanonicalLaneLean
end HautevilleHouse
