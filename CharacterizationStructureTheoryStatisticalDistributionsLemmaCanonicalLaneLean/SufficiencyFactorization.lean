import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean

structure FactorizationStructure where
  jointDensity : Type u
  sufficientStatistic : Type v
  parameter : Type w
  factor1 : Type x
  factor2 : Type y
  factorizationExists : Prop
  neymanCriterion : Prop
  factorizationExistsClosed : factorizationExists
  neymanCriterionClosed : neymanCriterion

structure FactorizationEvidence (F : FactorizationStructure) where
  factorizationExistsClosed : F.factorizationExists
  neymanCriterionClosed : F.neymanCriterion

def FactorizationClosed (F : FactorizationStructure) : Prop :=
  F.factorizationExists ∧ F.neymanCriterion

theorem factorization_closed_from_evidence (F : FactorizationStructure) (Ev : FactorizationEvidence F) : FactorizationClosed F := by
  exact And.intro Ev.factorizationExistsClosed Ev.neymanCriterionClosed

end CharacterizationStructureTheoryStatisticalDistributionsLemmaCanonicalLaneLean
end HautevilleHouse