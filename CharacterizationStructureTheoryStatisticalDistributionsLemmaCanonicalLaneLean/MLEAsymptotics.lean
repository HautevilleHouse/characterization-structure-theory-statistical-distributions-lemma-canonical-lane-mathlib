import canonicalLaneMathlib.AdmissibleClass

/-!
# MLE Asymptotics Package
-/

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure MLEAsymptoticsPackage {D : StatisticalDistributionPackage}
    {F : ExponentialFamilyPackage D} {S : SufficiencyPackage F}
    {N : NeymanPearsonPackage S} where
  mleConsistency : Prop
  mleAsymptoticNormality : Prop
  fisherInformation : Type
  consistencyCondition : Prop
  normalityCondition : Prop
  consistencyConditionClosed : consistencyCondition
  normalityConditionClosed : normalityCondition

structure MLEAsymptoticsEvidence {D : StatisticalDistributionPackage}
    {F : ExponentialFamilyPackage D} {S : SufficiencyPackage F}
    {N : NeymanPearsonPackage S} (M : MLEAsymptoticsPackage N) where
  consistencyConditionClosedTerm : M.consistencyCondition
  normalityConditionClosedTerm : M.normalityCondition

def MLEAsymptoticsClosed {D : StatisticalDistributionPackage}
    {F : ExponentialFamilyPackage D} {S : SufficiencyPackage F}
    {N : NeymanPearsonPackage S} (M : MLEAsymptoticsPackage N) : Prop :=
  M.consistencyCondition ∧ M.normalityCondition

theorem mle_asymptotics_closed_from_evidence
    {D : StatisticalDistributionPackage} {F : ExponentialFamilyPackage D}
    {S : SufficiencyPackage F} {N : NeymanPearsonPackage S}
    (M : MLEAsymptoticsPackage N) (Ev : MLEAsymptoticsEvidence M) :
    MLEAsymptoticsClosed M := by
  exact And.intro Ev.consistencyConditionClosedTerm Ev.normalityConditionClosedTerm

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse