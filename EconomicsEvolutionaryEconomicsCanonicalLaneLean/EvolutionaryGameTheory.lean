import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategySet : Type u
  payoffFunction : strategySet → strategySet → ℝ
  evolutionaryStableStrategy : Prop
  mutationSelectionDynamics : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy
  mutationSelectionDynamicsClosed : E.mutationSelectionDynamics

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.evolutionaryStableStrategy ∧ E.mutationSelectionDynamics

theorem evolutionary_game_theory_closed_from_evidence
    (E : EvolutionaryGameTheoryPackage) (Ev : EvolutionaryGameTheoryEvidence E) :
    EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.evolutionaryStableStrategyClosed Ev.mutationSelectionDynamicsClosed

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse