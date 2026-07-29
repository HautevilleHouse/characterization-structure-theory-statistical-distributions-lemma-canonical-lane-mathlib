import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure ExponentialFamilyStructure where
  sufficientStatistic : Type u
  canonicalParameter : Type v
  logPartition : Type w
  baseMeasure : Type x
  densityForm : Prop
  exponentialForm : Prop
  sufficientStatisticClosed : Prop
  canonicalParameterClosed : Prop
  logPartitionClosed : Prop
  baseMeasureClosed : Prop
  densityFormClosed : densityForm
  exponentialFormClosed : exponentialForm

structure ExponentialFamilyEvidence (E : ExponentialFamilyStructure) where
  densityFormClosed : E.densityForm
  exponentialFormClosed : E.exponentialForm

def ExponentialFamilyClosed (E : ExponentialFamilyStructure) : Prop :=
  E.densityForm ∧ E.exponentialForm

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyStructure) (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.densityFormClosed Ev.exponentialFormClosed

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse