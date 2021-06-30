test-for-possible-bugs
dontTestAddDependantMethodsLessOrEqualThanRemoveDependents
	"we add dependents in MEXExplorationView but need these also in MEXOverView, so we can't remove them manually"

	self assertAllAreZero: (self runLinterRule: #smallLintAddRemoveDependents)