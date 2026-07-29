import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.SpecialFunctions.Trigonometric

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure DiscreteConformalStructure (V : Type) where
  angles : V × V → ℝ
  edgeLength : V × V → ℝ
  angleSumCondition : ∀ v, (∑ w, angles (v, w)) = 2π

structure DiscreteRicciFlowPackage (V : Type) where
  initialStructure : DiscreteConformalStructure V
  targetCurvature : V → ℝ
  flowEquation : (V → ℝ) → (V → ℝ)
  solutionExists : Prop
  solutionUnique : Prop
  convergenceToConstantCurvature : Prop

structure DiscreteRicciFlowEvidence {V : Type} (F : DiscreteRicciFlowPackage V) where
  solutionExistsClosed : F.solutionExists
  solutionUniqueClosed : F.solutionUnique
  convergenceToConstantCurvatureClosed : F.convergenceToConstantCurvature

def DiscreteRicciFlowClosed {V : Type} (F : DiscreteRicciFlowPackage V) : Prop :=
  F.solutionExists ∧ F.solutionUnique ∧ F.convergenceToConstantCurvature

theorem discrete_ricci_flow_closed_from_evidence {V : Type} (F : DiscreteRicciFlowPackage V) (E : DiscreteRicciFlowEvidence F) :
    DiscreteRicciFlowClosed F := by
  exact And.intro E.solutionExistsClosed (And.intro E.solutionUniqueClosed E.convergenceToConstantCurvatureClosed)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse