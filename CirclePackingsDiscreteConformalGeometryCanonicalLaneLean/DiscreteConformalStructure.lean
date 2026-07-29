import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure DiscreteConformalStructure where
  triangulation : Type u
  edgeLengths : triangulation → triangulation → ℝ
  angleSum : triangulation → ℝ
  discreteConformalFactor : triangulation → ℝ
  circlePackingMetric : Prop
  pennerConformalStructure : Prop

structure DiscreteConformalEvidence (D : DiscreteConformalStructure) where
  circlePackingMetricClosed : D.circlePackingMetric
  pennerConformalStructureClosed : D.pennerConformalStructure

def DiscreteConformalClosed (D : DiscreteConformalStructure) : Prop :=
  D.circlePackingMetric ∧ D.pennerConformalStructure

theorem discrete_conformal_closed_from_evidence (D : DiscreteConformalStructure)
    (E : DiscreteConformalEvidence D) : DiscreteConformalClosed D :=
  And.intro E.circlePackingMetricClosed E.pennerConformalStructureClosed

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse