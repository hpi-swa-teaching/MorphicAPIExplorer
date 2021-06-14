test-unnecessary-code
testAssignmentHasNoEffect

	self assertAllAreZero: (self runLinterRule: #smallLintAssignmentWithoutEffect)