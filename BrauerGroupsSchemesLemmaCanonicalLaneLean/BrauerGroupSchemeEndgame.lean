import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

def BrauerGroupSchemeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

open BridgeLemmas GateLemmas

theorem brauer_group_scheme_endgame (A : AdmissibleClass) :
    BrauerGroupSchemeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse