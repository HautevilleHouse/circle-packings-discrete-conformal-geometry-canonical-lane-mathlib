import canonicalLaneMathlib.AdmissibleClass
import CirclePackingsDiscreteConformalGeometry.CirclePackingDiscreteConformalGeometry
import CirclePackingsDiscreteConformalGeometry.BridgeLemmas

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometry

def ConstrainedCirclePackingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_circle_packing_endgame (A : AdmissibleClass) :
    ConstrainedCirclePackingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CirclePackingsDiscreteConformalGeometry
end HautevilleHouse