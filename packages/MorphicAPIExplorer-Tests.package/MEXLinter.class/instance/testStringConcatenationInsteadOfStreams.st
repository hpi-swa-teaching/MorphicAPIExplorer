test-for-miscellaneous
testStringConcatenationInsteadOfStreams

	self assertAllAreZero: (self runLinterRule: #smallLintStringConcatenation)