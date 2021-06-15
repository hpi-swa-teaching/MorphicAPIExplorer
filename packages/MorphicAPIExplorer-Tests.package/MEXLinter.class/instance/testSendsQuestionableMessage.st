test-for-miscellaneous
testSendsQuestionableMessage

	self assertAllAreZero: (self runLinterRule: #smallLintBadMessage)