test-for-miscellaneous
dontTestExcessiveNumberOfMethods
	"Turns out, the CRLinter has quite a big number of statements."

	self assertAllAreZero: (self runLinterRule: #smallLintExcessiveMethods)