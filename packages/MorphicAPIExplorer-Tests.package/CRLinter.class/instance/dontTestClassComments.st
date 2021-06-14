test-for-spelling
dontTestClassComments
	"triggers even when we can't find any spelling mistakes so we're taking it out"
	
	self assertAllAreZero: (self runLinterRule: #smallLintClassCommentsSpelling)