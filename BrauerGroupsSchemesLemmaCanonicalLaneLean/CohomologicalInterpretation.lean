import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.EtaleCohomology

namespace HautevilleHouse
namespace BrauerGroupSchemesLemmaCanonicalLaneLean

structure CohomologyPackage {A : AdmissibleClass} where
  etaleCohomologyGroup : Type u
  brauerMapInjectivity : Prop
  periodIndexRelation : Prop
  mapWellDefined : Prop

structure CohomologyEvidence {A : AdmissibleClass} (C : CohomologyPackage A) where
  brauerMapInjectivityClosed : C.brauerMapInjectivity
  periodIndexRelationClosed : C.periodIndexRelation
  mapWellDefinedClosed : C.mapWellDefined

def CohomologyClosed {A : AdmissibleClass} (C : CohomologyPackage A) : Prop :=
  C.brauerMapInjectivity ∧ C.periodIndexRelation ∧ C.mapWellDefined

theorem cohomology_closed_from_evidence {A : AdmissibleClass} (C : CohomologyPackage A) (E : CohomologyEvidence C) :
    CohomologyClosed C := by
  exact And.intro E.brauerMapInjectivityClosed (And.intro E.periodIndexRelationClosed E.mapWellDefinedClosed)

end BrauerGroupSchemesLemmaCanonicalLaneLean
end HautevilleHouse
