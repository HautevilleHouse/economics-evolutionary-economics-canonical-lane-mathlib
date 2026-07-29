import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure ReplicatorDynamicsPackage where
  populationState : Type u
  fitnessFunction : populationState → ℝ
  growthRateEquation : Prop
  evolutionaryStability : Prop

structure ReplicatorDynamicsEvidence (R : ReplicatorDynamicsPackage) where
  growthRateEquationClosed : R.growthRateEquation
  evolutionaryStabilityClosed : R.evolutionaryStability

def ReplicatorDynamicsClosed (R : ReplicatorDynamicsPackage) : Prop :=
  R.growthRateEquation ∧ R.evolutionaryStability

theorem replicator_dynamics_closed_from_evidence
    (R : ReplicatorDynamicsPackage) (E : ReplicatorDynamicsEvidence R) :
    ReplicatorDynamicsClosed R := by
  exact And.intro E.growthRateEquationClosed E.evolutionaryStabilityClosed

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse