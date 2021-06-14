test-for-bugs
testBooleanPrecedenceRule

	self assertAllAreZero: (self runLinterRule: #smallLintBooleanPrecedence)