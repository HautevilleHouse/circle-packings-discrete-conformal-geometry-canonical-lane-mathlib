import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure CirclePackingsAdmittedObject where
  planarRegion : Type u
  topology : TopologicalSpace planarRegion
  circlePacking : Prop
  discreteConformalStructure : Prop
  conclusion : circlePacking ∧ discreteConformalStructure

def CirclePackingsWitnessClosed (O : CirclePackingsAdmittedObject) : Prop :=
  O.circlePacking ∧ O.discreteConformalStructure

structure AdmissibleClass where
  object : CirclePackingsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CirclePackingsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse