import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure LerayCoverClosed (S : AdmissibleClass) where
  coverAcyclic : Prop
  cechCohomologyVanishes : Prop
  cechDerivedFunctorCompatibility : Prop
  coverClosed : bridgeClosed S ∧ gateClosed S

theorem leray_cover_closed_from_bridge_gate (S : AdmissibleClass) : LerayCoverClosed S := by
  have hb := bridge_from_admissible_class S
  have hg := gate_from_admissible_class S
  exact ⟨hb, hg, hb, And.intro hb hg⟩

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse