test-unnecessary-code
brokenTestInstanceVariablesNotReadAndWritten
	"literally broken"

	self assertAllAreZero: (self runLinterRule: #smallLintOnlyReadOrWrittenVariable)