test-for-possible-bugs
testClassInstanceVariableOverriddenByTemporaryVariable

	self assertAllAreZero: (self runLinterRule: #smallLintTempVarOverridesInstVar)