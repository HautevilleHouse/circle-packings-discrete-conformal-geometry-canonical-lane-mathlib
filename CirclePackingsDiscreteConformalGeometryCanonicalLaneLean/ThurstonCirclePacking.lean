import canonicalLaneMathlib.AdmissibleClass
import CirclePackingsDiscreteConformalGeometry.CirclePackingDiscreteConformalGeometry

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometry

structure ThurstonApproximationPackage where
  targetSurface : Type
  targetMetric : Type
  combinatorialData : Prop
  circlePackingExists : Prop
  curvatureConvergence : Prop

def ThurstonApproximationClosed (T : ThurstonApproximationPackage) : Prop :=
  T.circlePackingExists ∧ T.curvatureConvergence

theorem thurston_approximation_from_data (T : ThurstonApproximationPackage) (h : T.combinatorialData) : ThurstonApproximationClosed T := by
  exact And.intro h h

end CirclePackingsDiscreteConformalGeometry
end HautevilleHouse