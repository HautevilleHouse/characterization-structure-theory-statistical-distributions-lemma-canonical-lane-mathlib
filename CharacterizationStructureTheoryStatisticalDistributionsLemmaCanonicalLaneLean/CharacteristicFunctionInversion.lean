import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure CharacteristicFunctionPackage where
  randomVariable : Type u
  distribution : Set (Set (randomVariable → ℝ))
  characteristicFunction : (randomVariable → ℝ) → (ℝ → ℂ)
  inversionFormula : (randomVariable → ℝ) → Prop
  uniquenessTheorem : Prop
  continuityTheorem : Prop

structure CharacteristicFunctionEvidence (C : CharacteristicFunctionPackage) where
  inversionFormulaClosed : ∀ (X : C.randomVariable → ℝ), C.inversionFormula X
  uniquenessClosed : C.uniquenessTheorem
  continuityClosed : C.continuityTheorem

def CharacteristicFunctionClosed (C : CharacteristicFunctionPackage) : Prop :=
  (∀ (X : C.randomVariable → ℝ), C.inversionFormula X) ∧ C.uniquenessTheorem ∧ C.continuityTheorem

theorem characteristic_function_closed_from_evidence (C : CharacteristicFunctionPackage) (E : CharacteristicFunctionEvidence C) :
    CharacteristicFunctionClosed C := by
  exact And.intro E.inversionFormulaClosed (And.intro E.uniquenessClosed E.continuityClosed)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse