import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure PeriodIndexPackage (X : Type u) [Scheme X] where
  brauerGroup : Type v
  periodMap : brauerGroup → ℕ
  indexMap : brauerGroup → ℕ
  periodIndexRelation : Prop
  periodIndexRelationTerm : periodIndexRelation

structure PeriodIndexEvidence {X : Type u} [Scheme X] (P : PeriodIndexPackage X) where
  periodIndexRelationClosed : P.periodIndexRelation

def PeriodIndexClosed {X : Type u} [Scheme X] (P : PeriodIndexPackage X) : Prop :=
  P.periodIndexRelation

theorem period_index_closed_from_evidence
    {X : Type u} [Scheme X] (P : PeriodIndexPackage X) (E : PeriodIndexEvidence P) :
    PeriodIndexClosed P := by
  exact E.periodIndexRelationClosed

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse