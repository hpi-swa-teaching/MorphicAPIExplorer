test-unnecessary-code
testCheckForSameStatementsAtEndOfIfTrueIfFalseBlocks

	self assertAllAreZero: (self runLinterRule: #smallLintEndTrueFalse)