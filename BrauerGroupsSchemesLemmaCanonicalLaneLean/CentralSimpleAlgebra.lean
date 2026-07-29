import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesLemmaCanonicalLaneLean

structure CentralSimpleAlgebra (k : Type u) [Field k] where
  carrier : Type v
  algebra : Algebra k carrier
  finiteDimensional : FiniteDimensional k carrier
  centerEqK : Subalgebra.center (Algebra k carrier) = ⊥
  simpleIdeal : Ideal (Algebra k carrier) = {⊥, ⊤}

structure CentralSimpleAlgebraEquiv (k : Type u) [Field k] (A B : CentralSimpleAlgebra k) where
  iso : A.carrier ≃ₐ[k] B.carrier

structure BrauerGroupFromCSA (k : Type u) [Field k] where
  objects : Set (CentralSimpleAlgebra k)
  equivalence : CentralSimpleAlgebra k → CentralSimpleAlgebra k → Prop
  equivalenceDef : ∀ A B, equivalence A B ↔ Nonempty (CentralSimpleAlgebraEquiv k A B)
  groupOp : CentralSimpleAlgebra k → CentralSimpleAlgebra k → CentralSimpleAlgebra k
  groupOpAsTensor : ∀ A B, groupOp A B = A ⊗[k] B

end BrauerGroupsSchemesLemmaCanonicalLaneLean
end HautevilleHouse