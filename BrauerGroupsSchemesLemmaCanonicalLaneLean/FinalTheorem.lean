import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsSchemesLemmaCanonicalLaneLean.BrauerGroupSchemeLemma

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

def ConstrainedBrauerGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_group_endgame (A : AdmissibleClass) :
    ConstrainedBrauerGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse