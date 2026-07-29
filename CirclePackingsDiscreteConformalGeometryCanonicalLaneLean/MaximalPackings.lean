import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

structure MaximalPackingsPackage where
  triangulation : Type u
  combinatorialRadius : Type v
  circlePackingFinite : Prop
  tangencyGraphFinite : Prop
  discreteConformalStructure : Prop
  maximalPackingExists : Prop

structure MaximalPackingsEvidence (M : MaximalPackingsPackage) where
  circlePackingFiniteClosed : M.circlePackingFinite
  tangencyGraphFiniteClosed : M.tangencyGraphFinite
  discreteConformalStructureClosed : M.discreteConformalStructure
  maximalPackingExistsClosed : M.maximalPackingExists

def MaximalPackingsClosed (M : MaximalPackingsPackage) : Prop :=
  M.circlePackingFinite ∧ M.tangencyGraphFinite ∧
  M.discreteConformalStructure ∧ M.maximalPackingExists

theorem maximal_packings_closed_from_evidence
    (M : MaximalPackingsPackage) (E : MaximalPackingsEvidence M) :
    MaximalPackingsClosed M := by
  exact And.intro E.circlePackingFiniteClosed
    (And.intro E.tangencyGraphFiniteClosed
      (And.intro E.discreteConformalStructureClosed
        E.maximalPackingExistsClosed))

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse