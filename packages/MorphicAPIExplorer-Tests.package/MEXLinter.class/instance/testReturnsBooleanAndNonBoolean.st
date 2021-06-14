test-for-possible-bugs
testReturnsBooleanAndNonBoolean

	self assertAllAreZero: (self runLinterRule: #smallLintReturnsBooleanAndOther)