test-for-possible-bugs
brokenTestPossibleMissingYourself
	"test returns false even with yourself at the end of a cascade"

	self assertAllAreZero: (self runLinterRule: #smallLintMissingYourself)