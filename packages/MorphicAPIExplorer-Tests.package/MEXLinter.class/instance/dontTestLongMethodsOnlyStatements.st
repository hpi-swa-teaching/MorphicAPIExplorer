test-for-coding-styles
dontTestLongMethodsOnlyStatements
	"we don't test this since UI stuff cannot be shortened"

	self assertAllAreZero: (self runLinterRule: #longMethod:)