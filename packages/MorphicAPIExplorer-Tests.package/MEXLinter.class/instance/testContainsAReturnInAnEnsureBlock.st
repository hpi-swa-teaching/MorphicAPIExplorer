test-for-possible-bugs
testContainsAReturnInAnEnsureBlock

	self assertAllAreZero: (self runLinterRule: #smallLintReturnInEnsure)