test-for-possible-bugs
testReturnsValueOfIfTrueIfFalseWithoutBlock

	self assertAllAreZero: (self runLinterRule: #smallLintReturnsIfTrue)