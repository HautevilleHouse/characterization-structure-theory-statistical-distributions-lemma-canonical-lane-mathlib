import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure SufficiencyFactorizationTheorem where
  sampleSpace : Type u
  sigmaAlgebra : MeasurableSpace sampleSpace
  parameterSpace : Type v
  familyOfDistributions : parameterSpace → Measure sampleSpace
  statistic : sampleSpace → ℝ
  factorizationIntoStatisticAndParameter : Prop
  neymanFactorizationCondition : Prop
  sufficientStatisticDefined : Prop
  factorizationIntoStatisticAndParameterTerm : factorizationIntoStatisticAndParameter
  neymanFactorizationConditionTerm : neymanFactorizationCondition
  sufficientStatisticDefinedTerm : sufficientStatisticDefined

structure SufficiencyFactorizationEvidence (S : SufficiencyFactorizationTheorem) where
  factorizationClosed : S.factorizationIntoStatisticAndParameter
  neymanClosed : S.neymanFactorizationCondition
  sufficientClosed : S.sufficientStatisticDefined

def SufficiencyFactorizationClosed (S : SufficiencyFactorizationTheorem) : Prop :=
  S.factorizationIntoStatisticAndParameter ∧ S.neymanFactorizationCondition ∧ S.sufficientStatisticDefined

theorem sufficiency_factorization_closed_from_evidence (S : SufficiencyFactorizationTheorem)
    (Ev : SufficiencyFactorizationEvidence S) : SufficiencyFactorizationClosed S := by
  exact And.intro Ev.factorizationClosed (And.intro Ev.neymanClosed Ev.sufficientClosed)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse