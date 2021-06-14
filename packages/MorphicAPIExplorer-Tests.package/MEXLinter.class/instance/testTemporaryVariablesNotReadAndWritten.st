test-unnecessary-code
testTemporaryVariablesNotReadAndWritten

	self assertAllAreZero: (self runLinterRule: #smallLintOnlyReadOrWrittenTemporary)