import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure AssetPricingPackage where
  stochasticDiscountFactor : Type u
  assetPayoffs : Type v
  pricingKernel : Type w
  noArbitrage : Prop
  lawOfOnePrice : Prop
  pricingFormulaExists : Prop

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrage ∧ A.lawOfOnePrice ∧ A.pricingFormulaExists

theorem asset_pricing_closed (A : AssetPricingPackage) (h : AssetPricingClosed A) : Prop :=
  h

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse