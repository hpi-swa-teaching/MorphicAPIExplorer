test-for-miscellaneous
brokenVariableIsOnlyAssignedALiteralValue

	self assertAllAreZero: (self runLinterRule: #smallLintVariableAssignedLiteral)