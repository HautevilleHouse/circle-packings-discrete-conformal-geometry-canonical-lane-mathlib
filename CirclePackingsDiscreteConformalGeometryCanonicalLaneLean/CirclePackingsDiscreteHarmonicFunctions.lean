import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.MeanInequalities

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure DiscreteLaplacian (V : Type) where
  weights : V → V → ℝ
  laplacian : (V → ℝ) → (V → ℝ)
  definition : ∀ (f : V → ℝ) (v : V), laplacian f v = ∑ w, weights v w * (f w - f v)

structure DiscreteHarmonicFunction (V : Type) (Δ : DiscreteLaplacian V) where
  functionValue : V → ℝ
  harmonicCondition : Δ.laplacian functionValue = 0

structure HarmonicExtensionPackage (V : Type) (Δ : DiscreteLaplacian V) where
  boundaryData : Set V → ℝ
  interior : Set V
  extensionExists : Prop
  uniqueExtension : Prop
  discreteMaximumPrinciple : Prop

structure HarmonicExtensionEvidence {V : Type} {Δ : DiscreteLaplacian V} (P : HarmonicExtensionPackage V Δ) where
  extensionExistsClosed : P.extensionExists
  uniqueExtensionClosed : P.uniqueExtension
  discreteMaximumPrincipleClosed : P.discreteMaximumPrinciple

def HarmonicExtensionClosed {V : Type} {Δ : DiscreteLaplacian V} (P : HarmonicExtensionPackage V Δ) : Prop :=
  P.extensionExists ∧ P.uniqueExtension ∧ P.discreteMaximumPrinciple

theorem harmonic_extension_closed_from_evidence {V : Type} {Δ : DiscreteLaplacian V} (P : HarmonicExtensionPackage V Δ) (E : HarmonicExtensionEvidence P) :
    HarmonicExtensionClosed P := by
  exact And.intro E.extensionExistsClosed (And.intro E.uniqueExtensionClosed E.discreteMaximumPrincipleClosed)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse