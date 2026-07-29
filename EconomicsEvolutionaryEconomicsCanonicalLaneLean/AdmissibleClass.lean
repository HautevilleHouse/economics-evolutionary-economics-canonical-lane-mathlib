import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure EconomicsAdmittedObject where
  marketStructure : Type u
  rationalityAssumption : Prop
  equilibriumState : Prop
  evolutionaryStability : Prop
  conclusion : evolutionaryStability

structure AdmissibleClass where
  object : EconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.evolutionaryStability ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse