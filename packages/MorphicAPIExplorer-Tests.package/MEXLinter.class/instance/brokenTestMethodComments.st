test-for-spelling
brokenTestMethodComments
	"leads to false positives and we don't think it's THAT important"

	self assertAllAreZero: (self runLinterRule: #smallLintMethodCommentsSpelling)