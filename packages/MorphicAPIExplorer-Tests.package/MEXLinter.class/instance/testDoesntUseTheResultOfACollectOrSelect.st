test-for-intention-revealing
testDoesntUseTheResultOfACollectOrSelect

	self assertAllAreZero: (self runLinterRule: #smallLintCollectSelectNotUsed)