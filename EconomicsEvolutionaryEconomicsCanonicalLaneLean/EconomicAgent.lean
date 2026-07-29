import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEvolutionaryEconomicsCanonicalLaneLean

structure EconomicAgent where
  carrier : Type u
  preferences : Type v
  initialEndowment : carrier → ℕ
  adaptiveStrategy : carrier → carrier

structure AgentAdmittedObject where
  agent : EconomicAgent
  rationalityAssumption : Prop
  strategicEquilibrium : Prop
  conclusion : strategicEquilibrium

def AgentWitnessClosed (O : AgentAdmittedObject) : Prop :=
  O.strategicEquilibrium

structure AdmissibleClass where
  object : AgentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AgentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsEvolutionaryEconomicsCanonicalLaneLean
end HautevilleHouse