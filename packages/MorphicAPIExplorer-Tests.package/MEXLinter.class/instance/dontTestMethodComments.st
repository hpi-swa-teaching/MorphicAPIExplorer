test-for-spelling
dontTestMethodComments
	"leads to false positives and we don't think it's THAT important"

	self assertAllAreZero: (self runLinterRule: #smallLintMethodCommentsSpelling)