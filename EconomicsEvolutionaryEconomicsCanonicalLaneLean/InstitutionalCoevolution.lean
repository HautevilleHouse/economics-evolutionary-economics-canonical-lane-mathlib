import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure InstitutionalCoevolutionEvidence where
  coevolutionFitnessLandscape : Prop
  institutionalComplementarity : Prop
  pathDependenceReinforcement : Prop
  coevolutionFitnessLandscapeClosed : coevolutionFitnessLandscape
  institutionalComplementarityClosed : institutionalComplementarity
  pathDependenceReinforcementClosed : pathDependenceReinforcement

def InstitutionalCoevolutionClosed (I : InstitutionalCoevolutionEvidence) : Prop :=
  I.coevolutionFitnessLandscape ∧ I.institutionalComplementarity ∧ I.pathDependenceReinforcement

theorem institutional_coevolution_closed_from_evidence (I : InstitutionalCoevolutionEvidence) :
    InstitutionalCoevolutionClosed I := by
  exact And.intro I.coevolutionFitnessLandscapeClosed
    (And.intro I.institutionalComplementarityClosed I.pathDependenceReinforcementClosed)

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse
