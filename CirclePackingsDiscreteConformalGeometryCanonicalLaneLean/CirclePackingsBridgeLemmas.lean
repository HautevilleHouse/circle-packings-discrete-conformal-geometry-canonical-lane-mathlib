import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CirclePackingsDiscreteConformalGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CirclePackingsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CirclePackingsDiscreteConformalGeometryCanonicalLaneLean
end HautevilleHouse