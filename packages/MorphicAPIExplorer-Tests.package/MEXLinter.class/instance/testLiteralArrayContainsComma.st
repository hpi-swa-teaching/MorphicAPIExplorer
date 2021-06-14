test-for-possible-bugs
testLiteralArrayContainsComma

	self assertAllAreZero: (self runLinterRule: #smallLintLiteralArrayContainsComma)