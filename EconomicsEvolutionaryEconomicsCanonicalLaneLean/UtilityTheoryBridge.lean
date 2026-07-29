import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure UtilityFunction where
  domain : Type u
  preferenceRelation : domain → domain → Prop
  utilityRepresentation : domain → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  representationTheorem : Prop

def UtilityTheoryClosed (U : UtilityFunction) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.representationTheorem

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse