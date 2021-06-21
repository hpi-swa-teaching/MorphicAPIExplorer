test-for-possible-bugs
testUsesTheResultOfAnAddMessage

	self assertAllAreZero: (self runLinterRule: #smallLintUsesAdd)