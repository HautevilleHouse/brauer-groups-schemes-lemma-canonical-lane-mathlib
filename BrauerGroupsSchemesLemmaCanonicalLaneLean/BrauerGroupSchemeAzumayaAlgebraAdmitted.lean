import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure AzumayaAlgebraAdmitted (A : AdmissibleClass) where
  azumayaCondition : Prop
  etaleLocalCondition : Prop
  equivalenceClassRepresentative : Prop
  admittedClosed : A.bridgeClosed ∧ A.gateClosed

theorem azumaya_algebra_admitted_from_bridge_gate (A : AdmissibleClass) :
    AzumayaAlgebraAdmitted A := by
  have hb := bridge_from_admissible_class A
  have hg := gateway_from_admissible_class A
  exact ⟨hb, hg, hb, And.intro hb hg⟩

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse