import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure CirclePacking (R : Type) where
  centers : R → ℂ
  radii : R → ℝ
  tangency : R → R → Prop
  condition : ∀ u v, tangency u v → |centers u - centers v| = radii u + radii v

def CirclePackingClosed (pc : CirclePacking R) : Prop :=
  ∀ u v, pc.tangency u v → |pc.centers u - pc.centers v| = pc.radii u + pc.radii v

structure ThurstonConvergencePackage (S : Type) where
  planarDomain : Set ℂ
  hexagonalLatticeApproximation : S → CirclePacking S
  combinatorialRiemannMapping : Prop
  uniformizationLimit : Prop
  discreteConformalMapExists : Prop

structure ThurstonConvergenceEvidence {S : Type} (P : ThurstonConvergencePackage S) where
  combinatorialRiemannMappingClosed : P.combinatorialRiemannMapping
  uniformizationLimitClosed : P.uniformizationLimit
  discreteConformalMapExistsClosed : P.discreteConformalMapExists

def ThurstonConvergenceClosed {S : Type} (P : ThurstonConvergencePackage S) : Prop :=
  P.combinatorialRiemannMapping ∧ P.uniformizationLimit ∧ P.discreteConformalMapExists

theorem thurston_convergence_closed_from_evidence {S : Type} (P : ThurstonConvergencePackage S) (E : ThurstonConvergenceEvidence P) : ThurstonConvergenceClosed P := by
  exact And.intro E.combinatorialRiemannMappingClosed (And.intro E.uniformizationLimitClosed E.discreteConformalMapExistsClosed)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse