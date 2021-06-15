test-for-spelling
dontTestArgumentVariableNames
	"fails because it doesn't know 'submorph'"

	self assertAllAreZero: (self runLinterRule: #smallLintArgumentVariableNamesSpelling)