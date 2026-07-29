import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure BrauerGroupSchemeFlat (G : AdmissibleClass) where
  flatRepresentative : Prop
  trivialityDetected : G.endpointSatisfied ∨ G.remainderRecorded
  descentCondition : G.bridgeClosed A → G.gateClosed A
  etaleLocalTriviality : Prop

theorem brauer_group_scheme_flat_descent (G : AdmissibleClass) :
    BrauerGroupSchemeFlat G := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact bridge_from_admissible_class G
  · exact gate_witness G
  · intro h
    exact h.2
  · exact A.endpointSatisfied

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse