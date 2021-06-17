test-for-miscellaneous
dontTestUtilityMethods

	self assertAllAreZero: (self runLinterRule: #smallLintUtilityMethods)