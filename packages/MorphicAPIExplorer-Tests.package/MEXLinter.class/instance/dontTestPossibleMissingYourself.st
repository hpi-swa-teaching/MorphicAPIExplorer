test-for-possible-bugs
dontTestPossibleMissingYourself
	"we want this sometimes thooo"

	self assertAllAreZero: (self runLinterRule: #smallLintMissingYourself)