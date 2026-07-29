import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure ExponentialFamilyStructure where
  sampleSpace : Type u
  sigmaAlgebra : MeasurableSpace sampleSpace
  naturalParameterSpace : Type v
  carrierMeasure : sampleSpace → ℝ
  sufficientStatistic : sampleSpace → ℝ
  logPartitionFunction : ℝ → ℝ  -- log normalizer
  exponentialFormRepresentation : Prop
  sufficientStatisticMeasurable : Prop
  carrierMeasureFinite : Prop
  exponentialFormRepresentationTerm : exponentialFormRepresentation
  sufficientStatisticMeasurableTerm : sufficientStatisticMeasurable
  carrierMeasureFiniteTerm : carrierMeasureFinite

structure ExponentialFamilyEvidence (E : ExponentialFamilyStructure) where
  exponentialFormRepresentationClosed : E.exponentialFormRepresentation
  sufficientStatisticMeasurableClosed : E.sufficientStatisticMeasurable
  carrierMeasureFiniteClosed : E.carrierMeasureFinite

def ExponentialFamilyClosed (E : ExponentialFamilyStructure) : Prop :=
  E.exponentialFormRepresentation ∧ E.sufficientStatisticMeasurable ∧ E.carrierMeasureFinite

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyStructure)
    (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.exponentialFormRepresentationClosed
    (And.intro Ev.sufficientStatisticMeasurableClosed Ev.carrierMeasureFiniteClosed)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse