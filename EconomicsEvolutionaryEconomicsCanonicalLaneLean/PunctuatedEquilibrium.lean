import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure PunctuatedEquilibriumEvidence where
  stasisPeriod : Prop
  externalShock : Prop
  rapidReconfiguration : Prop
  stasisPeriodClosed : stasisPeriod
  externalShockClosed : externalShock
  rapidReconfigurationClosed : rapidReconfiguration

def PunctuatedEquilibriumClosed (P : PunctuatedEquilibriumEvidence) : Prop :=
  P.stasisPeriod ∧ P.externalShock ∧ P.rapidReconfiguration

theorem punctuated_equilibrium_closed_from_evidence (P : PunctuatedEquilibriumEvidence) :
    PunctuatedEquilibriumClosed P := by
  exact And.intro P.stasisPeriodClosed
    (And.intro P.externalShockClosed P.rapidReconfigurationClosed)

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse
