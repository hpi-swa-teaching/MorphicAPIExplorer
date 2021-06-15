test-for-coding-styles
dontTestLongMethods
	"we don't test this since UI stuff cannot be shortened"

	self assertAllAreZero: (self runLinterRule: #longMethods:)