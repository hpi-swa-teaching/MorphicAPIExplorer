test-for-possible-bugs
testDefinesEqualButNotHash

	self assertAllAreZero: (self runLinterRule: #smallLintDefinesEqualNotHash)