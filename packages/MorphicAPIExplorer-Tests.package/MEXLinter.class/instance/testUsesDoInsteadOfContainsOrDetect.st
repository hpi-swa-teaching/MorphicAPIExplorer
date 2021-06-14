test-for-miscellaneous
testUsesDoInsteadOfContainsOrDetect

	self assertAllAreZero: (self runLinterRule: #smallLintDetectContains)