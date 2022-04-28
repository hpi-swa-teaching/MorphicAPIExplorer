test-for-possible-bugs
testPossibleMissingYourself

	self assertAllAreZero: (self runLinterRule: #smallLintMissingYourself)