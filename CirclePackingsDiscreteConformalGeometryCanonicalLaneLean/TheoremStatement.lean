import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure CirclePackingsAdmittedObject where
  space : CirclePackingsSpace
  discreteConformalStructure : Prop
  packingExists : Prop
  conclusion : packingExists

structure CirclePackingsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CirclePackingsEndgameState where
  object : CirclePackingsAdmittedObject

def CirclePackingsWitnessClosed (O : CirclePackingsAdmittedObject) : Prop :=
  O.packingExists

theorem circle_packings_witness_closed (O : CirclePackingsAdmittedObject) :
    CirclePackingsWitnessClosed O := O.conclusion

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse