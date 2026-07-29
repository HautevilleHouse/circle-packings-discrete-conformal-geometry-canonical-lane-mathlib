import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedClosure A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact admittedClosure A

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse