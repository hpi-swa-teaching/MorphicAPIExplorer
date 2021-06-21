test-for-possible-bugs
testEmptyExceptionHandler

	self assertAllAreZero: (self runLinterRule: #smallLintEmptyExceptionHandler)