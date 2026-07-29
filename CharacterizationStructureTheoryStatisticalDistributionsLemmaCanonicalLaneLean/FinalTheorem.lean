import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

def ConstrainedStatisticalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_statistical_endgame (A : AdmissibleClass) :
    ConstrainedStatisticalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse