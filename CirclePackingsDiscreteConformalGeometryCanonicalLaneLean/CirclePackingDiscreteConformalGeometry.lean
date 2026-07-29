import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometry

structure CirclePackingAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  circlePackingData : Prop
  discreteConformalStructure : Prop
  conclusion : circlePackingData ∧ discreteConformalStructure

def CirclePackingWitnessClosed (O : CirclePackingAdmittedObject) : Prop :=
  O.circlePackingData ∧ O.discreteConformalStructure

end CirclePackingsDiscreteConformalGeometry
end HautevilleHouse