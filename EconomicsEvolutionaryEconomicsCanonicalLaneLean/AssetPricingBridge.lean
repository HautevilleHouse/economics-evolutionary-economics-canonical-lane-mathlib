import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure AssetPricingModel where
  stateSpace : Type u
  assetPayoffs : stateSpace → ℝ
  discountFactor : ℝ
  riskNeutralProbability : stateSpace → ℝ
  noArbitrageCondition : Prop
  pricingFormula : Prop

def AssetPricingClosed (A : AssetPricingModel) : Prop :=
  A.noArbitrageCondition ∧ A.pricingFormula

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse