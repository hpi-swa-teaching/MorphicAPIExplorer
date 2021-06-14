test-unnecessary-code
testMethodJustSendsSuperMessage

	self assertAllAreZero: (self runLinterRule: #smallLintJustSendsSuper)