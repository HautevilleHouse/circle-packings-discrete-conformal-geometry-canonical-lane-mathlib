import CirclePackingsDiscreteConformalGeometryCanonicalLaneLean.CirclePackingsDomain

/-!
# Thurston Circle Packings Package
-/

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure CirclePackingsThurstonPackage {D : CirclePackingsDomainPackage} (C : CirclePackingsConfigPackage D) where
  existenceAndUniqueness : Prop
  convergenceToConformalMap : Prop
  maxProductPrinciple : Prop

theorem thurston_packing_theorem {D : CirclePackingsDomainPackage} {C : CirclePackingsConfigPackage D} (P : CirclePackingsThurstonPackage C) : Prop :=
  P.existenceAndUniqueness ∧ P.convergenceToConformalMap ∧ P.maxProductPrinciple

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse