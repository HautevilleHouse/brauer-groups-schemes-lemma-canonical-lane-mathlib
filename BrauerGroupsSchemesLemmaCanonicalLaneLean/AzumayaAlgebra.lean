import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure AzumayaAlgebra (R : Type u) [CommRing R] where
  algebra : Type v
  centralSimple : Prop
  separable : Prop
  finitelyGeneratedProjective : Prop
  centralSimpleTerm : centralSimple
  separableTerm : separable
  finitelyGeneratedProjectiveTerm : finitelyGeneratedProjective

structure AzumayaAlgebraEvidence (A : AzumayaAlgebra R) where
  centralSimpleClosed : A.centralSimple
  separableClosed : A.separable
  finitelyGeneratedProjectiveClosed : A.finitelyGeneratedProjective

def AzumayaAlgebraClosed (A : AzumayaAlgebra R) : Prop :=
  A.centralSimple ∧ A.separable ∧ A.finitelyGeneratedProjective

theorem azumaya_algebra_closed_from_evidence
    (A : AzumayaAlgebra R) (E : AzumayaAlgebraEvidence A) :
    AzumayaAlgebraClosed A := by
  exact And.intro E.centralSimpleClosed
    (And.intro E.separableClosed E.finitelyGeneratedProjectiveClosed)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse