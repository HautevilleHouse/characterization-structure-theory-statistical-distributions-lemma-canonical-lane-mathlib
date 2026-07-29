import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SufficiencyClosed (A.object : SufficiencyPackage) ∧
  ExponentialFamilyClosed (A.object : ExponentialFamilyPackage) ∧
  NeymanPearsonLemmaClosed (A.object : NeymanPearsonLemmaPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have hS : SufficiencyClosed (A.object : SufficiencyPackage) := by
    exact sufficiency_closed_from_evidence (A.object : SufficiencyPackage)
      (A.object.sufficiencyEvidence)
  have hE : ExponentialFamilyClosed (A.object : ExponentialFamilyPackage) := by
    exact exponential_family_closed_from_evidence (A.object : ExponentialFamilyPackage)
      (A.object.exponentialFamilyEvidence)
  have hN : NeymanPearsonLemmaClosed (A.object : NeymanPearsonLemmaPackage) := by
    exact neyman_pearson_lemma_closed_from_evidence (A.object : NeymanPearsonLemmaPackage)
      (A.object.neymanPearsonEvidence)
  exact And.intro hS (And.intro hE hN)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse