test-for-spelling
brokenTestInstanceVariableNames
	"has problems with our variable names"

	self assertAllAreZero: (self runLinterRule: #smallLintInstanceVariableNamesSpelling)