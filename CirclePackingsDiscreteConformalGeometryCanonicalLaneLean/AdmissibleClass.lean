import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure AdmissibleClass where
  object : CPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CPWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse