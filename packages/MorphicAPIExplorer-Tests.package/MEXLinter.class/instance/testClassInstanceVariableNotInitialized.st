test-for-possible-bugs
testClassInstanceVariableNotInitialized

	self assertAllAreZero: (self runLinterRule: #smallLintClassInstVarNotInitialized)