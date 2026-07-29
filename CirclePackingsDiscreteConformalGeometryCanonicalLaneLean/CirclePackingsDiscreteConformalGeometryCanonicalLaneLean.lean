import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure CirclePackingAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : Prop
  packable : Prop
  circleIntersticeNonempty : Prop
  convergenceCertificate : Prop

def AdmissibleClass := HautevilleHouse.CanonicalLaneMathlibCore.AdmissibleClass

def bridgeClosed (A : AdmissibleClass) : Prop := false

def gateClosed (A : AdmissibleClass) : Prop := false

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse