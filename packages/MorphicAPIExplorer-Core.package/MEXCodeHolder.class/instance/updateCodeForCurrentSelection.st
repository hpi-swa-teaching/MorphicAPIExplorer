content-generation
updateCodeForCurrentSelection

	self 
		updateContentsFor: self generateInitializationCode, self generateCodeForCurrentSelection;
		runCode