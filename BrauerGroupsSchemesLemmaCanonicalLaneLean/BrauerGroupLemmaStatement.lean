import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsSchemesLemmaCanonicalLaneLean.BrauerGroupScheme

/-!
# Brauer Group Lemma Statement

Final constrained closure for the Brauer group scheme lemma.
-/

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

def ConstrainedBrauerGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_group_endgame (A : AdmissibleClass) :
    ConstrainedBrauerGroupClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse
