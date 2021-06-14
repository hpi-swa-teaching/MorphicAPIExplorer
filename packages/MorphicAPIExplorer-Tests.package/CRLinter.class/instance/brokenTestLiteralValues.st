test-for-spelling
brokenTestLiteralValues
	"literally inherently broken"

	self assertAllAreZero: (self runLinterRule: #smallLintLiteralValuesSpelling)