test-for-possible-bugs
testPossibleThreeElementPoint

	self assertAllAreZero: (self runLinterRule: #smallLintThreeElementPoint)