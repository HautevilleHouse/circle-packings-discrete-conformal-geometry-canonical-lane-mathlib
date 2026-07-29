import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure CirclePackingMetric where
  underlyingSurface : Type u
  triangulation : underlyingSurface → Type v
  circleRadii : underlyingSurface → ℝ
  intersectionAngles : underlyingSurface → underlyingSurface → ℝ
  packingCoherence : Prop
  conformalScaling : Prop
  circleCenterMap : underlyingSurface → underlyingSurface
  metricFromPacking : underlyingSurface → ℝ

structure CirclePackingMetricEvidence (M : CirclePackingMetric) where
  packingCoherenceClosed : M.packingCoherence
  conformalScalingClosed : M.conformalScaling

def CirclePackingMetricClosed (M : CirclePackingMetric) : Prop :=
  M.packingCoherence ∧ M.conformalScaling

theorem circle_packing_metric_closed_from_evidence (M : CirclePackingMetric)
    (E : CirclePackingMetricEvidence M) : CirclePackingMetricClosed M :=
  And.intro E.packingCoherenceClosed E.conformalScalingClosed

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse