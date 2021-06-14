test-unnecessary-code
testBlockImmediatelyEvaluated

	self assertAllAreZero: (self runLinterRule: #smallLintExtraBlock)