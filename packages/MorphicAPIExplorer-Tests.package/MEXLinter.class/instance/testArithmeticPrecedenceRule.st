test-for-bugs
testArithmeticPrecedenceRule

	self assertAllAreZero: (self runLinterRule: #precedenceRule:)