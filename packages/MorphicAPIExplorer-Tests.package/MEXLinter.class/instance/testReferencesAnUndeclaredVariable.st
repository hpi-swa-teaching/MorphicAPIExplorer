test-for-bugs
testReferencesAnUndeclaredVariable

	self assertAllAreZero: (self runLinterRule: #smallLintUndeclaredReference)