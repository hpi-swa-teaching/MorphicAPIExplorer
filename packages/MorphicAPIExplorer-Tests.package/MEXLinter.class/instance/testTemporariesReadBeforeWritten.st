test-for-possible-bugs
testTemporariesReadBeforeWritten

	self assertAllAreZero: (self runLinterRule: #smallLintTempsReadBeforeWritten)