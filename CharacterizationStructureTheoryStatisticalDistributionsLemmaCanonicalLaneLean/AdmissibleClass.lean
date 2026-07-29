import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : StatisticalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  StatisticalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse