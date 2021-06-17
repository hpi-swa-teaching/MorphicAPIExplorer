test-for-possible-bugs
dontTestAddDependantMethodsLessOrEqualThanRemoveDependents

	self assertAllAreZero: (self runLinterRule: #smallLintAddRemoveDependents)