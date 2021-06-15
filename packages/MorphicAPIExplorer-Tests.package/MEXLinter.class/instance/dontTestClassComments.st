test-for-spelling
dontTestClassComments
	"doesn't work at all because it seems it can't handle our class names"
	
	self assertAllAreZero: (self runLinterRule: #smallLintClassCommentsSpelling)