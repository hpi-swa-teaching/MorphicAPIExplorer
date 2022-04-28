test-for-miscellaneous
dontTestUtilityMethods
	"some UI features and type conversions require this"

	self assertAllAreZero: (self runLinterRule: #smallLintUtilityMethods)