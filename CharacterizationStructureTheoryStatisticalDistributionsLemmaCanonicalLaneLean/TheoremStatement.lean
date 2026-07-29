import HautevilleHouse.CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure AdmittedStatisticalObject where
  space : Type
  probabilitySpace : Prop
  familyOfDistributions : Prop
  sufficientStatistic : Prop
  conclusion : sufficientStatistic

def StatisticalWitnessClosed (O : AdmittedStatisticalObject) : Prop :=
  O.sufficientStatistic

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse