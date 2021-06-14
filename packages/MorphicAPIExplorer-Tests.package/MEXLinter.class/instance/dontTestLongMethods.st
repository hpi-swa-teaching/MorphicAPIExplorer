test-for-coding-styles
dontTestLongMethods
	"this one sucks because we can't really do something about it"

	self assertAllAreZero: (self runLinterRule: #longMethods:)