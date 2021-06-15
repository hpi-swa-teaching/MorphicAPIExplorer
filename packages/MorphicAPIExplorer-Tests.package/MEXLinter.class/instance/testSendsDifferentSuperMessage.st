test-for-possible-bugs
testSendsDifferentSuperMessage

	self assertAllAreZero: (self runLinterRule: #smallLintSendsDifferentSuper)