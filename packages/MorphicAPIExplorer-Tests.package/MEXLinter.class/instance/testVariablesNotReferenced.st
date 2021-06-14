test-unnecessary-code
testVariablesNotReferenced

	self assertAllAreZero: (self runLinterRule: #smallLintUnreferencedVariables)