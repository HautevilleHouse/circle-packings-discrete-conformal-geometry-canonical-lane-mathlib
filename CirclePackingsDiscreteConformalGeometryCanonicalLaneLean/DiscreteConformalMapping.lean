import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure DiscreteConformalMapping where
  sourcePacking : Type u
  targetPacking : Type v
  mapping : sourcePacking → targetPacking
  preservesIntersectionAngles : Prop
  preservesCircleIntersections : Prop
  discreteConformalFactorChange : sourcePacking → ℝ
  mappingIsBijection : Prop

structure DiscreteConformalMappingEvidence (M : DiscreteConformalMapping) where
  preservesIntersectionAnglesClosed : M.preservesIntersectionAngles
  preservesCircleIntersectionsClosed : M.preservesCircleIntersections
  mappingIsBijectionClosed : M.mappingIsBijection

def DiscreteConformalMappingClosed (M : DiscreteConformalMapping) : Prop :=
  M.preservesIntersectionAngles ∧ M.preservesCircleIntersections ∧ M.mappingIsBijection

theorem discrete_conformal_mapping_closed_from_evidence (M : DiscreteConformalMapping)
    (E : DiscreteConformalMappingEvidence M) : DiscreteConformalMappingClosed M :=
  And.intro E.preservesIntersectionAnglesClosed
    (And.intro E.preservesCircleIntersectionsClosed E.mappingIsBijectionClosed)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse