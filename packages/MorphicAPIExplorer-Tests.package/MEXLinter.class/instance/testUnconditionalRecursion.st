test-for-possible-bugs
testUnconditionalRecursion

	self assertAllAreZero: (self runLinterRule: #smallLintUnconditionalRecursion)