import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure UtilityEvolutionPackage (A : AdmissibleClass) where
  choiceSpace : Type u
  preferenceRelation : choiceSpace → choiceSpace → Prop
  utilityFunction : choiceSpace → ℝ
  rationality : Prop
  continuity : Prop
  evolutionaryStability : Prop

structure UtilityEvolutionEvidence {A : AdmissibleClass} (P : UtilityEvolutionPackage A) where
  rationalityClosed : P.rationality
  continuityClosed : P.continuity
  evolutionaryStabilityClosed : P.evolutionaryStability

def UtilityEvolutionClosed {A : AdmissibleClass} (P : UtilityEvolutionPackage A) : Prop :=
  P.rationality ∧ P.continuity ∧ P.evolutionaryStability

theorem utility_evolution_closed_from_evidence {A : AdmissibleClass}
    (P : UtilityEvolutionPackage A) (E : UtilityEvolutionEvidence P) :
    UtilityEvolutionClosed P := by
  exact And.intro E.rationalityClosed (And.intro E.continuityClosed E.evolutionaryStabilityClosed)

end HautevilleHouse
end EconomicsEvolutionaryEconomicsCanonicalLaneLean
