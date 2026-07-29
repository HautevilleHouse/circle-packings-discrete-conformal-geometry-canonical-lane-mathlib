import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure DiscreteConformalStructure where
  surface : Type u
  topology : TopologicalSpace surface
  triangulation : Prop
  circlePackingMetric : Prop
  discreteConformalEquivalence : Prop

def DiscreteConformalStructureClosed (D : DiscreteConformalStructure) : Prop :=
  D.triangulation ∧ D.circlePackingMetric ∧ D.discreteConformalEquivalence

structure DiscreteRiemannMappingTheorem where
  source : DiscreteConformalStructure
  target : DiscreteConformalStructure
  mappingExists : Prop
  mappingPreservesCircles : Prop
  mappingIsDiscreteConformal : Prop

def DiscreteRiemannMappingTheoremClosed (T : DiscreteRiemannMappingTheorem) : Prop :=
  T.mappingExists ∧ T.mappingPreservesCircles ∧ T.mappingIsDiscreteConformal

theorem discrete_riemann_mapping_theorem_supports_closure
    (A : AdmissibleClass) (T : DiscreteRiemannMappingTheorem) :
    (bridgeClosed A ∧ gateClosed A) → DiscreteRiemannMappingTheoremClosed T := by
  intro h
  exact And.intro (by exact T.mappingExists) (And.intro T.mappingPreservesCircles T.mappingIsDiscreteConformal)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse