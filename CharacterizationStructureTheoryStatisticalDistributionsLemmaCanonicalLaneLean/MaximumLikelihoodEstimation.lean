import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure MaximumLikelihoodEstimationPackage where
  sampleSpace : Type u
  parameterSpace : Type v
  likelihoodFunction : Prop
  scoreFunction : Prop
  informationMatrix : Prop
  consistencyTheorem : Prop
  asymptoticNormalityTheorem : Prop

structure MaximumLikelihoodEstimationEvidence (M : MaximumLikelihoodEstimationPackage) where
  consistencyTheoremClosed : M.consistencyTheorem
  asymptoticNormalityTheoremClosed : M.asymptoticNormalityTheorem

def MaximumLikelihoodEstimationClosed (M : MaximumLikelihoodEstimationPackage) : Prop :=
  M.consistencyTheorem ∧ M.asymptoticNormalityTheorem

theorem maximum_likelihood_estimation_closed_from_evidence (M : MaximumLikelihoodEstimationPackage) (Ev : MaximumLikelihoodEstimationEvidence M) : MaximumLikelihoodEstimationClosed M := by
  exact And.intro Ev.consistencyTheoremClosed Ev.asymptoticNormalityTheoremClosed

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse