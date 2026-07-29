import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.BrauerGroup

namespace HautevilleHouse
namespace BrauerGroupSchemesLemmaCanonicalLaneLean

structure PeriodIndexPackage {A : AdmissibleClass} where
  periodDividesIndex : Prop
  indexDividesPeriod : Prop
  equalityCondition : Prop

structure PeriodIndexEvidence {A : AdmissibleClass} (P : PeriodIndexPackage A) where
  periodDividesIndexClosed : P.periodDividesIndex
  indexDividesPeriodClosed : P.indexDividesPeriod
  equalityConditionClosed : P.equalityCondition

def PeriodIndexClosed {A : AdmissibleClass} (P : PeriodIndexPackage A) : Prop :=
  P.periodDividesIndex ∧ P.indexDividesPeriod ∧ P.equalityCondition

theorem period_index_closed_from_evidence {A : AdmissibleClass} (P : PeriodIndexPackage A) (E : PeriodIndexEvidence P) :
    PeriodIndexClosed P := by
  exact And.intro E.periodDividesIndexClosed (And.intro E.indexDividesPeriodClosed E.equalityConditionClosed)

end BrauerGroupSchemesLemmaCanonicalLaneLean
end HautevilleHouse
