import canonicalLaneMathlib.AdmissibleClass

/-!
# Galois Cohomology Package

Galois cohomological description of the Brauer group.
-/

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure GaloisCohomologyPackage where
  galoisGroup : Type u
  h2Galois : Type v
  brauerGroup : Type w
  isomorphism : Prop
  functorial : Prop
  compatibility : Prop

structure GaloisCohomologyEvidence (G : GaloisCohomologyPackage) where
  isomorphismClosed : G.isomorphism
  functorialClosed : G.functorial
  compatibilityClosed : G.compatibility

def GaloisCohomologyClosed (G : GaloisCohomologyPackage) : Prop :=
  G.isomorphism ∧ G.functorial ∧ G.compatibility

theorem galois_cohomology_closed_from_evidence (G : GaloisCohomologyPackage)
    (E : GaloisCohomologyEvidence G) : GaloisCohomologyClosed G :=
  And.intro E.isomorphismClosed
    (And.intro E.functorialClosed E.compatibilityClosed)

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse
