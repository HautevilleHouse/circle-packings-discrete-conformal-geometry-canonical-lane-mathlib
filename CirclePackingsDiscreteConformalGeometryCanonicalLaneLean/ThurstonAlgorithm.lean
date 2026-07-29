import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure ThurstonAlgorithm where
  inputTriangulation : Type u
  iterativeRadiiUpdate : (inputTriangulation → ℝ) → (inputTriangulation → ℝ)
  fixedPointExists : Prop
  limitCirclePacking : Prop
  convergenceRate : ℝ
  maxIterations : ℕ

structure ThurstonAlgorithmEvidence (T : ThurstonAlgorithm) where
  fixedPointExistsClosed : T.fixedPointExists
  limitCirclePackingClosed : T.limitCirclePacking

def ThurstonAlgorithmClosed (T : ThurstonAlgorithm) : Prop :=
  T.fixedPointExists ∧ T.limitCirclePacking

theorem thurston_algorithm_closed_from_evidence (T : ThurstonAlgorithm)
    (E : ThurstonAlgorithmEvidence T) : ThurstonAlgorithmClosed T :=
  And.intro E.fixedPointExistsClosed E.limitCirclePackingClosed

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse