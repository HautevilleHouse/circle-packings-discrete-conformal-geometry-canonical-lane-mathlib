import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure DiscreteRiemannMappingPackage where
  planarDomain : Type u
  targetDisks : Type v
  mappingDefined : Prop
  discreteConformal : Prop
  mappingIsCirclePacking : Prop
  mappingIsUnique : Prop

structure DiscreteRiemannMappingEvidence (D : DiscreteRiemannMappingPackage) where
  mappingDefinedClosed : D.mappingDefined
  discreteConformalClosed : D.discreteConformal
  mappingIsCirclePackingClosed : D.mappingIsCirclePacking
  mappingIsUniqueClosed : D.mappingIsUnique

def DiscreteRiemannMappingClosed (D : DiscreteRiemannMappingPackage) : Prop :=
  D.mappingDefined ∧ D.discreteConformal ∧
  D.mappingIsCirclePacking ∧ D.mappingIsUnique

theorem discrete_riemann_mapping_closed_from_evidence
    (D : DiscreteRiemannMappingPackage) (E : DiscreteRiemannMappingEvidence D) :
    DiscreteRiemannMappingClosed D := by
  exact And.intro E.mappingDefinedClosed
    (And.intro E.discreteConformalClosed
      (And.intro E.mappingIsCirclePackingClosed
        E.mappingIsUniqueClosed))

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse