test-for-possible-bugs
dontTestSendsDifferentSuperMessage
	"Only used for an error handling case so we don't need it"

	self assertAllAreZero: (self runLinterRule: #smallLintSendsDifferentSuper)