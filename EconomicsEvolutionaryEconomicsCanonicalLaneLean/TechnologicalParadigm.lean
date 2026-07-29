import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure TechnologicalParadigmEvidence where
  dominantDesign : Prop
  technologicalTrajectory : Prop
  selectionEnvironment : Prop
  dominantDesignClosed : dominantDesign
  technologicalTrajectoryClosed : technologicalTrajectory
  selectionEnvironmentClosed : selectionEnvironment

def TechnologicalParadigmClosed (T : TechnologicalParadigmEvidence) : Prop :=
  T.dominantDesign ∧ T.technologicalTrajectory ∧ T.selectionEnvironment

theorem technological_paradigm_closed_from_evidence (T : TechnologicalParadigmEvidence) :
    TechnologicalParadigmClosed T := by
  exact And.intro T.dominantDesignClosed
    (And.intro T.technologicalTrajectoryClosed T.selectionEnvironmentClosed)

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse
