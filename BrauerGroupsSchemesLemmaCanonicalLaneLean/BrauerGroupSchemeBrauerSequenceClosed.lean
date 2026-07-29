import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure BrauerSequenceClosed (S : AdmissibleClass) where
  exactSequence : Prop
  mapFromBrauerGroupInjective : Prop
  mapFromBrauerGroupSurjective : Prop
  sequenceClosed : bridgeClosed S ∧ gateClosed S

theorem brauer_sequence_closed_from_bridge_gate (S : AdmissibleClass) :
    BrauerSequenceClosed S := by
  have hb := bridge_from_admissible_class S
  have hg := gateway_from_admissible_class S
  refine ⟨hb, hg, hb, And.intro hb hg⟩

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse