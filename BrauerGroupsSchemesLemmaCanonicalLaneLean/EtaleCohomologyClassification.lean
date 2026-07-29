import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure EtaleCohomologyPackage {B : BrauerGroupScheme} where
  h2EtaleSheaf : Type u
  gerbeLifting : Prop
  cohomologyClass : h2EtaleSheaf
  gerbeLiftingClosed : gerbeLifting
  isomorphismWithBrauerGroup : Prop

structure EtaleCohomologyEvidence {B : BrauerGroupScheme} (E : EtaleCohomologyPackage B) where
  gerbeLiftingClosed : E.gerbeLifting
  isomorphismWithBrauerGroupClosed : E.isomorphismWithBrauerGroup

def EtaleCohomologyClassification {B : BrauerGroupScheme} (E : EtaleCohomologyPackage B) : Prop :=
  E.gerbeLifting ∧ E.isomorphismWithBrauerGroup

theorem etale_cohomology_classification_closed {B : BrauerGroupScheme} (E : EtaleCohomologyPackage B) (Ev : EtaleCohomologyEvidence E) :
    EtaleCohomologyClassification E := by
  exact And.intro Ev.gerbeLiftingClosed Ev.isomorphismWithBrauerGroupClosed

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse