test-for-possible-bugs
dontTestSendsDifferentSuperMessage

	self assertAllAreZero: (self runLinterRule: #smallLintSendsDifferentSuper)