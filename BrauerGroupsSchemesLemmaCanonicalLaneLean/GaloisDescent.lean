import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure GaloisDescentPackage where
  extensionField : Type u
  galoisGroup : Type v
  descentData : Prop
  cocycleCondition : Prop
  effectiveDescent : Prop
  descentDataTerm : descentData
  cocycleConditionTerm : cocycleCondition
  effectiveDescentTerm : effectiveDescent

structure GaloisDescentEvidence (G : GaloisDescentPackage) where
  descentDataClosed : G.descentData
  cocycleConditionClosed : G.cocycleCondition
  effectiveDescentClosed : G.effectiveDescent

def GaloisDescentClosed (G : GaloisDescentPackage) : Prop :=
  G.descentData ∧ G.cocycleCondition ∧ G.effectiveDescent

theorem galois_descent_closed_from_evidence (G : GaloisDescentPackage) (E : GaloisDescentEvidence G) : GaloisDescentClosed G := by
  exact And.intro E.descentDataClosed (And.intro E.cocycleConditionClosed E.effectiveDescentClosed)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse