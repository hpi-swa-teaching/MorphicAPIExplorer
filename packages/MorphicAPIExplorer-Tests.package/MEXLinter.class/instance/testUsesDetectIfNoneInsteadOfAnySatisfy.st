test-for-intention-revealing
testUsesDetectIfNoneInsteadOfAnySatisfy

	self assertAllAreZero: (self runLinterRule: #smallLintContains)