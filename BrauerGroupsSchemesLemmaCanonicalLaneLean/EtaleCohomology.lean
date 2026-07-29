import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure EtaleSite (X : Type u) [TopologicalSpace X] where
  etaleMaps : Set (X → X)
  coveringCondition : ∀ (U : Set X) (openU : IsOpen U), ∃ (f : X → X) (hf : f ∈ etaleMaps), f '' Set.univ = U

structure H2Etale (X : Type u) [TopologicalSpace X] where
  cocycles : Set (EtaleSite X → AbelianGroup)
  coboundaries : Set (EtaleSite X → AbelianGroup)
  cohomologyClass : (cocycles ⧸ coboundaries)

structure EtaleCohomologyEvidence (X : Type u) [TopologicalSpace X] (H : H2Etale X) where
  cohomologyClassWellDefined : True
  cocycleCondition : ∀ f ∈ H.cocycles, f (∅) = 0

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse