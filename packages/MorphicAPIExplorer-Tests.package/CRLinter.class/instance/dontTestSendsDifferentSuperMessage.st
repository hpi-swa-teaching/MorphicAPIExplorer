test-for-possible-bugs
dontTestSendsDifferentSuperMessage
	"Our initializeWith: calls super initialize and that's fine."

	self assertAllAreZero: (self runLinterRule: #smallLintSendsDifferentSuper)