import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure EvolutionaryEquilibriumSelectionPackage where
  populationState : Type u
  fitnessFunction : populationState → ℝ
  mutationRate : ℝ
  selectionDynamics : Prop
  equilibriumExistence : Prop
  stabilityCriterion : Prop

structure EvolutionaryEquilibriumSelectionEvidence (E : EvolutionaryEquilibriumSelectionPackage) where
  selectionDynamicsClosed : E.selectionDynamics
  equilibriumExistenceClosed : E.equilibriumExistence
  stabilityCriterionClosed : E.stabilityCriterion

def EvolutionaryEquilibriumSelectionClosed (E : EvolutionaryEquilibriumSelectionPackage) : Prop :=
  E.selectionDynamics ∧ E.equilibriumExistence ∧ E.stabilityCriterion

theorem evolutionary_equilibrium_selection_closed_from_evidence
    (E : EvolutionaryEquilibriumSelectionPackage)
    (Ev : EvolutionaryEquilibriumSelectionEvidence E) :
    EvolutionaryEquilibriumSelectionClosed E := by
  exact And.intro Ev.selectionDynamicsClosed
    (And.intro Ev.equilibriumExistenceClosed Ev.stabilityCriterionClosed)

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse