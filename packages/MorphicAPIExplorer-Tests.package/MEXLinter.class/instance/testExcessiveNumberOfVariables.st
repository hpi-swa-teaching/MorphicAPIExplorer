test-for-miscellaneous
testExcessiveNumberOfVariables

	self assertAllAreZero: (self runLinterRule: #smallLintExcessiveVariables)