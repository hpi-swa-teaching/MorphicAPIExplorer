test-for-bugs
testVariableUsedButNotDefinedAnywhere

	self assertAllAreZero: (self runLinterRule: #smallLintVariableNotDefined)