import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

def ConstrainedCirclePackingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_circle_packings_endgame (A : AdmissibleClass) :
    ConstrainedCirclePackingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse