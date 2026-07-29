import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure BrauerGroupScheme (X : Type u) [Scheme X] where
  azumayaAlgebra : X → Type v
  etaleLocalTriviality : Prop
  moritaEquivalence : Prop
  periodIndexRelation : Prop
  azumayaAlgebraTerm : azumayaAlgebra
  etaleLocalTrivialityTerm : etaleLocalTriviality
  moritaEquivalenceTerm : moritaEquivalence
  periodIndexRelationTerm : periodIndexRelation

structure BrauerGroupSchemeEvidence {X : Type u} [Scheme X] (B : BrauerGroupScheme X) where
  etaleLocalTrivialityClosed : B.etaleLocalTriviality
  moritaEquivalenceClosed : B.moritaEquivalence
  periodIndexRelationClosed : B.periodIndexRelation

def BrauerGroupSchemeClosed {X : Type u} [Scheme X] (B : BrauerGroupScheme X) : Prop :=
  B.etaleLocalTriviality ∧ B.moritaEquivalence ∧ B.periodIndexRelation

theorem brauer_group_scheme_closed_from_evidence
    {X : Type u} [Scheme X] (B : BrauerGroupScheme X) (E : BrauerGroupSchemeEvidence B) :
    BrauerGroupSchemeClosed B := by
  exact And.intro E.etaleLocalTrivialityClosed
    (And.intro E.moritaEquivalenceClosed E.periodIndexRelationClosed)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse