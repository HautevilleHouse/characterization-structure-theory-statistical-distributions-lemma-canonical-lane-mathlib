import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure MLEStructure where
  parameterSpace : Type u
  observations : Type v
  logLikelihood : Type w
  scoreFunction : Type x
  fisherInformation : Type y
  consistentEstimator : Prop
  asymptoticallyNormal : Prop
  consistentEstimatorClosed : consistentEstimator
  asymptoticallyNormalClosed : asymptoticallyNormal

structure MLEEvidence (M : MLEStructure) where
  consistentEstimatorClosed : M.consistentEstimator
  asymptoticallyNormalClosed : M.asymptoticallyNormal

def MLEClosed (M : MLEStructure) : Prop :=
  M.consistentEstimator ∧ M.asymptoticallyNormal

theorem mle_closed_from_evidence (M : MLEStructure) (Ev : MLEEvidence M) : MLEClosed M := by
  exact And.intro Ev.consistentEstimatorClosed Ev.asymptoticallyNormalClosed

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse