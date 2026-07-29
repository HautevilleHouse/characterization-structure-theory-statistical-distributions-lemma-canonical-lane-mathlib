import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure SufficiencyPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  familyOfDistributions : Prop
  statistic : Type w
  sufficientStatisticDefinition : Prop
  factorizationCriterion : Prop
  neymanFactorization : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  sufficientStatisticDefinitionClosed : S.sufficientStatisticDefinition
  factorizationCriterionClosed : S.factorizationCriterion
  neymanFactorizationClosed : S.neymanFactorization

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.sufficientStatisticDefinition ∧ S.factorizationCriterion ∧ S.neymanFactorization

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (Ev : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro Ev.sufficientStatisticDefinitionClosed (And.intro Ev.factorizationCriterionClosed Ev.neymanFactorizationClosed)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse