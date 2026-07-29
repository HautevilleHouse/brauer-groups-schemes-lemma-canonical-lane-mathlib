import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.Scheme
import Mathlib.RingTheory.Etale

namespace HautevilleHouse
namespace BrauerGroupSchemesLemmaCanonicalLaneLean

structure BrauerScheme where
  carrier : Scheme
  azumayaAlgebra : Type u
  brauerClass : Type v
  isAzumaya : Prop
  conclusion : isAzumaya

def BrauerWitnessClosed (O : BrauerScheme) : Prop :=
  O.isAzumaya

end BrauerGroupSchemesLemmaCanonicalLaneLean
end HautevilleHouse
