test-for-possible-bugs
testMissingSuperSendsInSelectedMethods

	self assertAllAreZero: (self runLinterRule: #smallLintMissingSuperSends)