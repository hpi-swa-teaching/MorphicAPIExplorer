test-for-miscellaneous
testDoesntUseResultOfAYourselfMessage

	self assertAllAreZero: (self runLinterRule: #smallLintYourselfNotUsed)