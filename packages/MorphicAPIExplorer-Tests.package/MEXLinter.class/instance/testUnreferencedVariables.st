test-unnecessary-code
testUnreferencedVariables

	self assertAllAreFalse: (self runLinterRule: #unreferencedVariable:)