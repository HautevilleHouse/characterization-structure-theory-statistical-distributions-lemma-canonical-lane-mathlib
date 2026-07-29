import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure MaximumLikelihoodEstimatorAsymptotics where
  sampleSpace : Type u
  sigmaAlgebra : MeasurableSpace sampleSpace
  parameterSpace : Type v
  logLikelihoodFunction : (sampleSpace → ℝ) → (v → ℝ)
  trueParameter : v
  fisherInformation : v → Matrix ℝ ℝ
  mleEstimator : sampleSpace → v
  regularityConditions : Prop
  consistency : Prop
  asymptoticNormality : Prop
  regularityConditionsTerm : regularityConditions
  consistencyTerm : consistency
  asymptoticNormalityTerm : asymptoticNormality

structure MLEAsymptoticsEvidence (M : MaximumLikelihoodEstimatorAsymptotics) where
  regularityClosed : M.regularityConditions
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality

def MLEAsymptoticsClosed (M : MaximumLikelihoodEstimatorAsymptotics) : Prop :=
  M.regularityConditions ∧ M.consistency ∧ M.asymptoticNormality

theorem mle_asymptotics_closed_from_evidence (M : MaximumLikelihoodEstimatorAsymptotics)
    (Ev : MLEAsymptoticsEvidence M) : MLEAsymptoticsClosed M := by
  exact And.intro Ev.regularityClosed (And.intro Ev.consistencyClosed Ev.asymptoticNormalityClosed)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse