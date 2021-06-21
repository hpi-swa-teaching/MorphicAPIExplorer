test-for-possible-bugs
testUncommonMessageSend

	self assertAllAreZero: (self runLinterRule: #smallLintUncommonMessageSend)