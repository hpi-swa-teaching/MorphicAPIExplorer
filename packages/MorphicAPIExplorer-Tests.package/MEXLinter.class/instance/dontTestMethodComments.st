test-for-spelling
dontTestMethodComments
	"since we can't find any spelling mistakes we are taking this out"

	self assertAllAreZero: (self runLinterRule: #smallLintMethodCommentsSpelling)