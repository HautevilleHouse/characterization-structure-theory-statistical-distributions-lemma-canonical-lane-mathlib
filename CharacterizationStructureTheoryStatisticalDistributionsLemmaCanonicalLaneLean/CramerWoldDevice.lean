import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure CramerWoldPackage where
  randomVector : Type u
  distribution : Set (Set (randomVector → ℝ))
  linearCombinationDistribution : (randomVector → ℝ) → Set (Set (ℝ → ℝ))
  cramerWoldTheorem : Prop
  empiricalProcessApplication : Prop

structure CramerWoldEvidence (C : CramerWoldPackage) where
  cramerWoldClosed : C.cramerWoldTheorem
  empiricalApplicationClosed : C.empiricalProcessApplication

def CramerWoldClosed (C : CramerWoldPackage) : Prop :=
  C.cramerWoldTheorem ∧ C.empiricalProcessApplication

theorem cramer_wold_closed_from_evidence (C : CramerWoldPackage) (E : CramerWoldEvidence C) :
    CramerWoldClosed C := by
  exact And.intro E.cramerWoldClosed E.empiricalApplicationClosed

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse