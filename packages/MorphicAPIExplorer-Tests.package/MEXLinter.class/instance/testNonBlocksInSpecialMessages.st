test-for-miscellaneous
testNonBlocksInSpecialMessages

	self assertAllAreZero: (self runLinterRule: #smallLintIfTrueBlocks)