import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure Graph where
  V : Type
  E : Set (V × V)
  planarEmbedding : V → ℂ

structure CirclePackingRepresentation (G : Graph) where
  radius : G.V → ℝ
  tangency : ∀ (u v : G.V), (u, v) ∈ G.E → |G.planarEmbedding u - G.planarEmbedding v| = radius u + radius v
  nonDegenerate : ∀ v, radius v > 0

structure KoebeAndreevThurstonPackage (G : Graph) where
  circlePackingExists : Prop
  uniquenessUpToMobius : Prop
  maximalPacking : Prop

structure KoebeAndreevThurstonEvidence {G : Graph} (P : KoebeAndreevThurstonPackage G) where
  circlePackingExistsClosed : P.circlePackingExists
  uniquenessUpToMobiusClosed : P.uniquenessUpToMobius
  maximalPackingClosed : P.maximalPacking

def KoebeAndreevThurstonClosed {G : Graph} (P : KoebeAndreevThurstonPackage G) : Prop :=
  P.circlePackingExists ∧ P.uniquenessUpToMobius ∧ P.maximalPacking

theorem koebe_andreev_thurston_closed_from_evidence {G : Graph} (P : KoebeAndreevThurstonPackage G) (E : KoebeAndreevThurstonEvidence P) :
    KoebeAndreevThurstonClosed P := by
  exact And.intro E.circlePackingExistsClosed (And.intro E.uniquenessUpToMobiusClosed E.maximalPackingClosed)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse