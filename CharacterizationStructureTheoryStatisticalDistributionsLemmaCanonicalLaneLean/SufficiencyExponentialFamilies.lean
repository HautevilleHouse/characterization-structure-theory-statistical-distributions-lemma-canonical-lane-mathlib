import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure SufficiencyPackage where
  sampleSpace : Type u
  sigmaAlgebra : Set (Set sampleSpace)
  parameterSpace : Type v
  familyOfDistributions : parameterSpace → Set (Set sampleSpace)
  sufficientStatistic : sampleSpace → Type w
  factorizationTheorem : Prop
  exponentialFamilyForm : Prop

def sufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationTheorem ∧ S.exponentialFamilyForm

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse