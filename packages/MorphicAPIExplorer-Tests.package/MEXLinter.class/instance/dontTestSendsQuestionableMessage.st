test-for-miscellaneous
dontTestSendsQuestionableMessage
	"in some cases, isKindOf is crucial for our code so we don't test this"

	self assertAllAreZero: (self runLinterRule: #smallLintBadMessage)