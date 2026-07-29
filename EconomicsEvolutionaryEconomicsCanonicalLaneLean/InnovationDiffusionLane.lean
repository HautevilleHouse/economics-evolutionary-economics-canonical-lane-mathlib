import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure InnovationDiffusionPackage where
  technologySpace : Type u
  adoptionRate : ℝ
  networkExternalities : Prop
  diffusionDynamics : Prop
  criticalMass : ℝ
  lockInPossibility : Prop

structure InnovationDiffusionEvidence (D : InnovationDiffusionPackage) where
  diffusionDynamicsClosed : D.diffusionDynamics
  criticalMassDefined : D.criticalMass > 0
  lockInPossibilityClosed : D.lockInPossibility

def InnovationDiffusionClosed (D : InnovationDiffusionPackage) : Prop :=
  D.diffusionDynamics ∧ D.lockInPossibility

theorem innovation_diffusion_closed_from_evidence
    (D : InnovationDiffusionPackage)
    (Ev : InnovationDiffusionEvidence D) :
    InnovationDiffusionClosed D := by
  exact And.intro Ev.diffusionDynamicsClosed Ev.lockInPossibilityClosed

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse