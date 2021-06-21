test-for-possible-bugs
testAddDependantMethodsLessOrEqualThanRemoveDependents

	self assertAllAreZero: (self runLinterRule: #smallLintAddRemoveDependents)