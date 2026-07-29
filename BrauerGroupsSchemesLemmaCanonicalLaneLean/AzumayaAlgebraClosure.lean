import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure AzumayaAlgebraOverScheme {B : BrauerGroupScheme} where
  algebra : B.azumayaAlgebra
  maximalOrder : Prop
  splitByEtaleCover : Prop
  moritaEquivalenceClass : B.brauerGroup
  maximalOrderClosed : maximalOrder
  splitByEtaleCoverClosed : splitByEtaleCover
  moritaEquivalenceClassWellDefined : Prop

structure AzumayaAlgebraEvidence {B : BrauerGroupScheme} (A : AzumayaAlgebraOverScheme B) where
  maximalOrderClosed : A.maximalOrder
  splitByEtaleCoverClosed : A.splitByEtaleCover
  moritaEquivalenceClassWellDefinedClosed : A.moritaEquivalenceClassWellDefined

def AzumayaAlgebraClosure {B : BrauerGroupScheme} (A : AzumayaAlgebraOverScheme B) : Prop :=
  A.maximalOrder ∧ A.splitByEtaleCover ∧ A.moritaEquivalenceClassWellDefined

theorem azumaya_algebra_closed_from_evidence {B : BrauerGroupScheme} (A : AzumayaAlgebraOverScheme B) (E : AzumayaAlgebraEvidence A) :
    AzumayaAlgebraClosure A := by
  exact And.intro E.maximalOrderClosed
    (And.intro E.splitByEtaleCoverClosed E.moritaEquivalenceClassWellDefinedClosed)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse