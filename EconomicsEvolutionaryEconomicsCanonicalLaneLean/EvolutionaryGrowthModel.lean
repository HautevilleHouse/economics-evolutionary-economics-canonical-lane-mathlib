import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure EndogenousGrowthPackage (A : AdmissibleClass) where
  capitalStock : Type u
  technologyLevel : Type v
  productionFunction : capitalStock → technologyLevel → ℝ
  innovationRate : ℝ
  growthRatePositive : Prop
  steadyStateExists : Prop

structure EndogenousGrowthEvidence {A : AdmissibleClass} (P : EndogenousGrowthPackage A) where
  growthRatePositiveClosed : P.growthRatePositive
  steadyStateExistsClosed : P.steadyStateExists

def EndogenousGrowthClosed {A : AdmissibleClass} (P : EndogenousGrowthPackage A) : Prop :=
  P.growthRatePositive ∧ P.steadyStateExists

theorem endogenous_growth_closed_from_evidence {A : AdmissibleClass}
    (P : EndogenousGrowthPackage A) (E : EndogenousGrowthEvidence P) :
    EndogenousGrowthClosed P := by
  exact And.intro E.growthRatePositiveClosed E.steadyStateExistsClosed

end HautevilleHouse
end EconomicsEvolutionaryEconomicsCanonicalLaneLean
