import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure SufficiencyPackage where
  sampleSpace : Type u
  probabilityFamily : Type v
  sufficientStatistic : sampleSpace → Type w
  factorizationCriterion : Prop
  minimalSufficientDomain : Prop
  completeness : Prop

structure SufficiencyEvidence (S : SufficiencyPackage) where
  factorizationCriterionClosed : S.factorizationCriterion
  minimalSufficientDomainClosed : S.minimalSufficientDomain
  completenessClosed : S.completeness

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.factorizationCriterion ∧ S.minimalSufficientDomain ∧ S.completeness

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (E : SufficiencyEvidence S) :
    SufficiencyClosed S := by
  exact And.intro E.factorizationCriterionClosed
    (And.intro E.minimalSufficientDomainClosed E.completenessClosed)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse