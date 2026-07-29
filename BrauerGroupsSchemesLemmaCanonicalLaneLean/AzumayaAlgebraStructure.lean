import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.Scheme
import Mathlib.RingTheory.Azumaya

namespace HautevilleHouse
namespace BrauerGroupSchemesLemmaCanonicalLaneLean

structure AzumayaAlgebraPackage {A : AdmissibleClass} where
  algebraStructure : Type u
  centralSimple : Prop
  splitAfterEtale : Prop
  moritaEquivalence : Prop

structure AzumayaAlgebraEvidence {A : AdmissibleClass} (Az : AzumayaAlgebraPackage A) where
  centralSimpleClosed : Az.centralSimple
  splitAfterEtaleClosed : Az.splitAfterEtale
  moritaEquivalenceClosed : Az.moritaEquivalence

def AzumayaAlgebraClosed {A : AdmissibleClass} (Az : AzumayaAlgebraPackage A) : Prop :=
  Az.centralSimple ∧ Az.splitAfterEtale ∧ Az.moritaEquivalence

theorem azumaya_algebra_closed_from_evidence {A : AdmissibleClass} (Az : AzumayaAlgebraPackage A) (E : AzumayaAlgebraEvidence Az) :
    AzumayaAlgebraClosed Az := by
  exact And.intro E.centralSimpleClosed (And.intro E.splitAfterEtaleClosed E.moritaEquivalenceClosed)

end BrauerGroupSchemesLemmaCanonicalLaneLean
end HautevilleHouse
