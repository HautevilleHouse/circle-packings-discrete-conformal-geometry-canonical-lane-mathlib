import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure DiscreteCurvatureFlatteningPackage where
  packingMetric : Type u
  discreteConformalStructure : Type v
  curvatureDefined : Prop
  curvatureFlattening : Prop
  flatteningControlsPacking : Prop

structure DiscreteCurvatureFlatteningEvidence (C : DiscreteCurvatureFlatteningPackage) where
  curvatureDefinedClosed : C.curvatureDefined
  curvatureFlatteningClosed : C.curvatureFlattening
  flatteningControlsPackingClosed : C.flatteningControlsPacking

def DiscreteCurvatureFlatteningClosed (C : DiscreteCurvatureFlatteningPackage) : Prop :=
  C.curvatureDefined ∧ C.curvatureFlattening ∧ C.flatteningControlsPacking

theorem discrete_curvature_flattening_closed_from_evidence
    (C : DiscreteCurvatureFlatteningPackage) (E : DiscreteCurvatureFlatteningEvidence C) :
    DiscreteCurvatureFlatteningClosed C := by
  exact And.intro E.curvatureDefinedClosed
    (And.intro E.curvatureFlatteningClosed E.flatteningControlsPackingClosed)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse