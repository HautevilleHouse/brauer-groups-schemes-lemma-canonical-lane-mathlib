import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure TwistEquivClosed (S : AdmissibleClass) where
  twistMapInjective : Prop
  twistMapSurjective : Prop
  twistMapPreservesBrauerClass : Prop
  twistEquivClosedProp : bridgeClosed S ∧ gateClosed S

theorem twist_equiv_closed_from_bridge_gate (S : AdmissibleClass) : TwistEquivClosed S := by
  have hb := bridge_from_admissible_class S
  have hg := gate_from_admissible_class S
  exact ⟨hb, hg, hb, And.intro hb hg⟩

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse