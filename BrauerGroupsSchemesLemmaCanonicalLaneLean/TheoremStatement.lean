import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

theorem theorem_statement_brauer_groups_schemes :
    ∀ (A : AdmissibleClass), ConstrainedBrauerGroupsSchemesClosure A := by
  intro A
  exact constrained_brauer_groups_schemes_endgame A

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse
