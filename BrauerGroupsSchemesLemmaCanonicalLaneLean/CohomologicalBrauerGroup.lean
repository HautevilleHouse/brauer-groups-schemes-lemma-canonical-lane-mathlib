import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure CohomologicalBrauerPackage where
  etaleCohomologyGm : Type u
  brauerGroupDefinition : Prop
  cupProduct : Prop
  periodIndexRelation : Prop
  tateTwistCompatibility : Prop
  brauerGroupDefinitionTerm : brauerGroupDefinition
  cupProductTerm : cupProduct
  periodIndexRelationTerm : periodIndexRelation
  tateTwistCompatibilityTerm : tateTwistCompatibility

structure CohomologicalBrauerEvidence (C : CohomologicalBrauerPackage) where
  brauerGroupDefinitionClosed : C.brauerGroupDefinition
  cupProductClosed : C.cupProduct
  periodIndexRelationClosed : C.periodIndexRelation
  tateTwistCompatibilityClosed : C.tateTwistCompatibility

def CohomologicalBrauerClosed (C : CohomologicalBrauerPackage) : Prop :=
  C.brauerGroupDefinition ∧ C.cupProduct ∧ C.periodIndexRelation ∧ C.tateTwistCompatibility

theorem cohomological_brauer_closed_from_evidence (C : CohomologicalBrauerPackage) (E : CohomologicalBrauerEvidence C) : CohomologicalBrauerClosed C := by
  exact And.intro E.brauerGroupDefinitionClosed (And.intro E.cupProductClosed (And.intro E.periodIndexRelationClosed E.tateTwistCompatibilityClosed))

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse