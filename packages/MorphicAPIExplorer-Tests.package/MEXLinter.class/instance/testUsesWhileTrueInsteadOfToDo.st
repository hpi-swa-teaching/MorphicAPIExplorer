test-for-intention-revealing
testUsesWhileTrueInsteadOfToDo

	self assertAllAreZero: (self runLinterRule: #smallLintWhileTrue)