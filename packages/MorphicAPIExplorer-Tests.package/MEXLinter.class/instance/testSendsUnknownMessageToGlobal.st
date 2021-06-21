test-for-bugs
testSendsUnknownMessageToGlobal

	self assertAllAreZero: (self runLinterRule: #smallLintSendsUnknownMessageToGlobal)