test-for-miscellaneous
dontTestSendsQuestionableMessage
	"We use isKindOf: in a test."

	self assertAllAreZero: (self runLinterRule: #smallLintBadMessage)