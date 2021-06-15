test-for-miscellaneous
testExcessiveNumberOfMethods
	"Turns out, the CRLinter has quite a big number of statements."

	self assertAllAreZero: (self runLinterRule: #smallLintExcessiveMethods)