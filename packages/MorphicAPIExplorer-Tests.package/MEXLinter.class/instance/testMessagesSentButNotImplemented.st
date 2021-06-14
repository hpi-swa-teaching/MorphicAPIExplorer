test-for-bugs
testMessagesSentButNotImplemented

	self assertAllAreZero: (self runLinterRule: #smallLintUndeclaredReference)