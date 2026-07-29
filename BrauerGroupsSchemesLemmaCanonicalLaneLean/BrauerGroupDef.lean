import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure AzumayaAlgebra (R : Type u) [CommRing R] where
  carrier : Type v
  algebra : Algebra R carrier
  finiteProjective : Module.Finite R carrier ∧ Module.Projective R carrier
  centerEqR : Subalgebra.center (Algebra R carrier) = ⊥

structure BrauerGroup (R : Type u) [CommRing R] where
  objects : Set (AzumayaAlgebra R)
  equivalence : AzumayaAlgebra R → AzumayaAlgebra R → Prop
  groupOperation : AzumayaAlgebra R → AzumayaAlgebra R → AzumayaAlgebra R
  groupOperationAssoc : ∀ a b c, equivalence (groupOperation (groupOperation a b) c) (groupOperation a (groupOperation b c))

structure BrauerGroupEvidence (R : Type u) [CommRing R] (B : BrauerGroup R) where
  wellDefinedTensorProduct : ∀ a b, B.equivalence (B.groupOperation a b) (B.groupOperation b a)
  identityExists : ∃ e : AzumayaAlgebra R, ∀ a, B.equivalence (B.groupOperation e a) a
  inversesExist : ∀ a, ∃ b, B.equivalence (B.groupOperation a b) (Classical.choice (by exact ?_))

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse