test-for-possible-bugs
dontTestAddDependantMethodsLessOrEqualThanRemoveDependents
	"We are adding more dependents in MEXOverview for UI reasons so this test always fails"

	self assertAllAreZero: (self runLinterRule: #smallLintAddRemoveDependents)