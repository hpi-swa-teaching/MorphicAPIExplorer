test-for-possible-bugs
testUnpackagedCode

	self assertAllAreZero: (self runLinterRule: #smallLintUnpackagedCode)