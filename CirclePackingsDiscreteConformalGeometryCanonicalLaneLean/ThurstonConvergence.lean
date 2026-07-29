import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure ThurstonConvergencePackage where
  triangulationRefinement : Type u
  discreteConformalMaps : Type v
  limitExists : Prop
  limitIsConformal : Prop
  approximationOrder : Prop

structure ThurstonConvergenceEvidence (T : ThurstonConvergencePackage) where
  limitExistsClosed : T.limitExists
  limitIsConformalClosed : T.limitIsConformal
  approximationOrderClosed : T.approximationOrder

def ThurstonConvergenceClosed (T : ThurstonConvergencePackage) : Prop :=
  T.limitExists ∧ T.limitIsConformal ∧ T.approximationOrder

theorem thurston_convergence_closed_from_evidence
    (T : ThurstonConvergencePackage) (E : ThurstonConvergenceEvidence T) :
    ThurstonConvergenceClosed T := by
  exact And.intro E.limitExistsClosed
    (And.intro E.limitIsConformalClosed E.approximationOrderClosed)

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse