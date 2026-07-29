import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure KoebeAndreevThurston where
  combinatorialType : Type u
  circlePackingExists : Prop
  rigidity : Prop
  uniquenessUpToMobius : Prop
  discreteConformalEquivalence : Prop

structure KoebeAndreevThurstonEvidence (K : KoebeAndreevThurston) where
  circlePackingExistsClosed : K.circlePackingExists
  rigidityClosed : K.rigidity
  uniquenessUpToMobiusClosed : K.uniquenessUpToMobius
  discreteConformalEquivalenceClosed : K.discreteConformalEquivalence

def KoebeAndreevThurstonClosed (K : KoebeAndreevThurston) : Prop :=
  K.circlePackingExists ∧ K.rigidity ∧ K.uniquenessUpToMobius ∧ K.discreteConformalEquivalence

theorem koebe_andreev_thurston_closed_from_evidence (K : KoebeAndreevThurston)
    (E : KoebeAndreevThurstonEvidence K) : KoebeAndreevThurstonClosed K :=
  And.intro E.circlePackingExistsClosed (And.intro E.rigidityClosed
    (And.intro E.uniquenessUpToMobiusClosed E.discreteConformalEquivalenceClosed))

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse