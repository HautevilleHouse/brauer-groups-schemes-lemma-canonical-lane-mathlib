import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure BrauerGroupScheme where
  scheme : Type u
  etaleCover : Type v
  azumayaAlgebra : Type w
  brauerGroup : Type x
  schemeTopology : TopologicalSpace scheme
  coverFamily : List etaleCover
  algebraStructure : azumayaAlgebra -> scheme -> Type
  groupOperation : brauerGroup -> brauerGroup -> brauerGroup
  identityElement : brauerGroup
  inverseMap : brauerGroup -> brauerGroup
  cohomologicalInterpretation : Prop
  periodIndexRelation : Prop
  splitByCover : Prop
  cohomologicalInterpretationClosed : cohomologicalInterpretation
  periodIndexRelationClosed : periodIndexRelation
  splitByCoverClosed : splitByCover

structure BrauerGroupSchemeEvidence (B : BrauerGroupScheme) where
  cohomologicalInterpretationClosed : B.cohomologicalInterpretation
  periodIndexRelationClosed : B.periodIndexRelation
  splitByCoverClosed : B.splitByCover

def BrauerGroupSchemeClosed (B : BrauerGroupScheme) : Prop :=
  B.cohomologicalInterpretation ∧ B.periodIndexRelation ∧ B.splitByCover

theorem brauer_group_scheme_closed_from_evidence (B : BrauerGroupScheme) (E : BrauerGroupSchemeEvidence B) :
    BrauerGroupSchemeClosed B := by
  exact And.intro E.cohomologicalInterpretationClosed
    (And.intro E.periodIndexRelationClosed E.splitByCoverClosed)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse