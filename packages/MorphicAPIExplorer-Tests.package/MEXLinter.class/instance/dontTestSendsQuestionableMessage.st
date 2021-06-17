test-for-miscellaneous
dontTestSendsQuestionableMessage

	self assertAllAreZero: (self runLinterRule: #smallLintBadMessage)