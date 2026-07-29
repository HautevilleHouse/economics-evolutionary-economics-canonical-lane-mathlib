import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure PopulationGeneticsPackage where
  alleleFrequencies : Type u
  selectionCoefficient : Type v
  hardyWeinbergEquilibrium : Prop
  evolutionaryDrift : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  hardyWeinbergEquilibriumClosed : P.hardyWeinbergEquilibrium
  evolutionaryDriftClosed : P.evolutionaryDrift

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.hardyWeinbergEquilibrium ∧ P.evolutionaryDrift

theorem population_genetics_closed_from_evidence
    (P : PopulationGeneticsPackage) (E : PopulationGeneticsEvidence P) :
    PopulationGeneticsClosed P := by
  exact And.intro E.hardyWeinbergEquilibriumClosed E.evolutionaryDriftClosed

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse