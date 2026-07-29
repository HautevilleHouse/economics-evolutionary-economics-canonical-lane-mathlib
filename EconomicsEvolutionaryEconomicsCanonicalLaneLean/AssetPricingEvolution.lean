import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure AssetPricingPackage (A : AdmissibleClass) where
  assetSpace : Type u
  stochasticDiscountFactor : assetSpace → ℝ
  priceProcess : ℕ → assetSpace → ℝ
  noArbitrage : Prop
  riskNeutralValuation : Prop

structure AssetPricingEvidence {A : AdmissibleClass} (P : AssetPricingPackage A) where
  noArbitrageClosed : P.noArbitrage
  riskNeutralValuationClosed : P.riskNeutralValuation

def AssetPricingClosed {A : AdmissibleClass} (P : AssetPricingPackage A) : Prop :=
  P.noArbitrage ∧ P.riskNeutralValuation

theorem asset_pricing_closed_from_evidence {A : AdmissibleClass}
    (P : AssetPricingPackage A) (E : AssetPricingEvidence P) :
    AssetPricingClosed P := by
  exact And.intro E.noArbitrageClosed E.riskNeutralValuationClosed

end HautevilleHouse
end EconomicsEvolutionaryEconomicsCanonicalLaneLean
