import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean.ExponentialFamily
import HautevilleHouse.CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean.SufficiencyLemma
import HautevilleHouse.CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean.NeymanPearsonLemma
import HautevilleHouse.CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean.MaximumLikelihoodEstimation

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure CharacterizationPackage (E : ExponentialFamilyStructure) (S : SufficiencyPackage) (N : NeymanPearsonPackage) (M : MaximumLikelihoodEstimationPackage) where
  exponentialFamilySufficiencyBridge : Prop
  neymanPearsonOptimalityLink : Prop
  mleConsistencyLink : Prop
  characterizationComplete : Prop

structure CharacterizationEvidence (E : ExponentialFamilyStructure) (S : SufficiencyPackage) (N : NeymanPearsonPackage) (M : MaximumLikelihoodEstimationPackage) (C : CharacterizationPackage E S N M) where
  exponentialFamilySufficiencyBridgeClosed : C.exponentialFamilySufficiencyBridge
  neymanPearsonOptimalityLinkClosed : C.neymanPearsonOptimalityLink
  mleConsistencyLinkClosed : C.mleConsistencyLink
  characterizationCompleteClosed : C.characterizationComplete

def CharacterizationClosed (E : ExponentialFamilyStructure) (S : SufficiencyPackage) (N : NeymanPearsonPackage) (M : MaximumLikelihoodEstimationPackage) (C : CharacterizationPackage E S N M) : Prop :=
  C.exponentialFamilySufficiencyBridge ∧ C.neymanPearsonOptimalityLink ∧ C.mleConsistencyLink ∧ C.characterizationComplete

theorem characterization_closed_from_evidence (E : ExponentialFamilyStructure) (S : SufficiencyPackage) (N : NeymanPearsonPackage) (M : MaximumLikelihoodEstimationPackage) (C : CharacterizationPackage E S N M) (Ev : CharacterizationEvidence E S N M C) : CharacterizationClosed E S N M C := by
  exact And.intro Ev.exponentialFamilySufficiencyBridgeClosed (And.intro Ev.neymanPearsonOptimalityLinkClosed (And.intro Ev.mleConsistencyLinkClosed Ev.characterizationCompleteClosed))

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse