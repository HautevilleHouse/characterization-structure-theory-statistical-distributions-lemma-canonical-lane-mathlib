import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure CharacteristicFunctionStructure where
  probabilityMeasure : Measure ℝ
  characteristicFunction : ℝ → ℂ
  integrabilityCondition : ∀ t : ℝ, Integrable (fun x => Real.cos (t * x) + I * Real.sin (t * x)) probabilityMeasure
  continuityAtZero : ContinuousAt characteristicFunction 0
  inversionFormula : Prop
  continuityAtZeroTerm : continuityAtZero
  inversionFormulaTerm : inversionFormula
  integrabilityConditionTerm : ∀ t : ℝ, Integrable (fun x => Real.cos (t * x) + I * Real.sin (t * x)) probabilityMeasure

structure CharacteristicFunctionEvidence (C : CharacteristicFunctionStructure) where
  continuityClosed : C.continuityAtZero
  inversionClosed : C.inversionFormula
  integrabilityClosed : ∀ t : ℝ, Integrable (fun x => Real.cos (t * x) + I * Real.sin (t * x)) C.probabilityMeasure

def CharacteristicFunctionClosed (C : CharacteristicFunctionStructure) : Prop :=
  C.continuityAtZero ∧ C.inversionFormula

theorem characteristic_function_closed_from_evidence (C : CharacteristicFunctionStructure)
    (Ev : CharacteristicFunctionEvidence C) : CharacteristicFunctionClosed C := by
  exact And.intro Ev.continuityClosed Ev.inversionClosed

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse