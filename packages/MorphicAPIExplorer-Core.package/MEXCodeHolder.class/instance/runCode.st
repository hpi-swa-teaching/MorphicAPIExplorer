commands
runCode

	self save.
	self explorationView evaluateCode: self generateInitializationCode and: self generateCodeForCurrentSelection.