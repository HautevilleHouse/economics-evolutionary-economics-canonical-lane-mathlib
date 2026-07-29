import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure EquilibriumSelectionPackage where
  payoffMatrix : Type u
  nashEquilibriaSet : Type v
  refinementCriterion : Prop
  selectedEquilibrium : Prop

structure EquilibriumSelectionEvidence (E : EquilibriumSelectionPackage) where
  refinementCriterionClosed : E.refinementCriterion
  selectedEquilibriumClosed : E.selectedEquilibrium

def EquilibriumSelectionClosed (E : EquilibriumSelectionPackage) : Prop :=
  E.refinementCriterion ∧ E.selectedEquilibrium

theorem equilibrium_selection_closed_from_evidence
    (E : EquilibriumSelectionPackage) (Ev : EquilibriumSelectionEvidence E) :
    EquilibriumSelectionClosed E := by
  exact And.intro Ev.refinementCriterionClosed Ev.selectedEquilibriumClosed

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse