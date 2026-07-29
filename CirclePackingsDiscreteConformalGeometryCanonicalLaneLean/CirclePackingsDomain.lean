import CirclePackingsDiscreteConformalGeometryCanonicalLaneLean.AdmissibleClass

/-!
# Circle Packings Domain Package
-/

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure CirclePackingsDomainPackage where
  triangulation : Type u
  boundaryVertices : Type v
  interiorVertices : Type w
  combinatoricsSatisfied : Prop
  boundaryConditions : Prop

structure CirclePackingsConfigPackage (D : CirclePackingsDomainPackage) where
  radii : D.interiorVertices → ℝ
  centers : D.interiorVertices → ℂ
  boundaryRadii : D.boundaryVertices → ℝ
  boundaryCenters : D.boundaryVertices → ℂ
  packingCondition : Prop
  disjointnessCondition : Prop

structure CPAdmittedObject where
  domain : CirclePackingsDomainPackage
  config : CirclePackingsConfigPackage domain
  closureCondition : Prop
  conclusion : closureCondition

def CPWitnessClosed (O : CPAdmittedObject) : Prop :=
  O.closureCondition

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse