content-generation
updateInitializationCode

	self contents: self generateInitializationCode.
	self changed: #contents