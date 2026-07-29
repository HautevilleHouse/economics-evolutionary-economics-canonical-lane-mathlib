import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure RoutineInnovationEvidence where
  pathDependency : Prop
  localSearch : Prop
  incrementalImprovement : Prop
  pathDependencyClosed : pathDependency
  localSearchClosed : localSearch
  incrementalImprovementClosed : incrementalImprovement

def RoutineInnovationClosed (E : RoutineInnovationEvidence) : Prop :=
  E.pathDependency ∧ E.localSearch ∧ E.incrementalImprovement

theorem routine_innovation_closed_from_evidence (E : RoutineInnovationEvidence) :
    RoutineInnovationClosed E := by
  exact And.intro E.pathDependencyClosed
    (And.intro E.localSearchClosed E.incrementalImprovementClosed)

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse
