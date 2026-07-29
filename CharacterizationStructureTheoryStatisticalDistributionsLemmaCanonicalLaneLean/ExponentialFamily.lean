import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure ExponentialFamilyPackage where
  sampleSpace : Type u
  sufficientStatistic : sampleSpace → ℝⁿ
  naturalParameterSpace : Type v
  logPartitionFunction : naturalParameterSpace → ℝ
  canonicalForm : Prop
  regularityConditions : Prop
  minimalRepresentation : Prop

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  canonicalFormClosed : E.canonicalForm
  regularityConditionsClosed : E.regularityConditions
  minimalRepresentationClosed : E.minimalRepresentation

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.canonicalForm ∧ E.regularityConditions ∧ E.minimalRepresentation

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage)
    (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.canonicalFormClosed
    (And.intro Ev.regularityConditionsClosed Ev.minimalRepresentationClosed)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse