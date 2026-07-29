import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure BrauerGroupEtaleEquivalence (R : Type u) [CommRing R] where
  brauerGroup : BrauerGroup R
  etaleCohomology : H2Etale (Spec R)
  mapForward : BrauerGroup R → H2Etale (Spec R)
  mapBackward : H2Etale (Spec R) → BrauerGroup R
  forwardBackward : ∀ b : BrauerGroup R, mapBackward (mapForward b) = b
  backwardForward : ∀ h : H2Etale (Spec R), mapForward (mapBackward h) = h

structure BrauerGroupEtaleEvidence (R : Type u) [CommRing R] (E : BrauerGroupEtaleEquivalence R) where
  mapForwardWellDefined : ∀ a b : E.brauerGroup, E.brauerGroup.equivalence a b → E.mapForward a = E.mapForward b
  mapBackwardWellDefined : ∀ h k : E.etaleCohomology, h = k → E.brauerGroup.equivalence (E.mapBackward h) (E.mapBackward k)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse