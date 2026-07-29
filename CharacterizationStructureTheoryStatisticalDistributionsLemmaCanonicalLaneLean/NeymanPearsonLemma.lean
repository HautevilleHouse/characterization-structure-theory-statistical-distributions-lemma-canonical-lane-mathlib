import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure NeymanPearsonLemmaPackage where
  hypothesis : Prop
  alternative : Prop
  testStatistic : Type u
  criticalRegion : Type v
  optimalLevel : ℝ
  mostPowerfulTest : Prop
  likelihoodRatioOrdering : Prop

structure NeymanPearsonLemmaEvidence (N : NeymanPearsonLemmaPackage) where
  mostPowerfulTestClosed : N.mostPowerfulTest
  likelihoodRatioOrderingClosed : N.likelihoodRatioOrdering

def NeymanPearsonLemmaClosed (N : NeymanPearsonLemmaPackage) : Prop :=
  N.mostPowerfulTest ∧ N.likelihoodRatioOrdering

theorem neyman_pearson_lemma_closed_from_evidence (N : NeymanPearsonLemmaPackage)
    (E : NeymanPearsonLemmaEvidence N) : NeymanPearsonLemmaClosed N := by
  exact And.intro E.mostPowerfulTestClosed E.likelihoodRatioOrderingClosed

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse