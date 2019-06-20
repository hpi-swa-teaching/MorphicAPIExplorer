content-generation
updateCodeForCurrentSelection

	self 
		contents: ( self generateInitializationCode, self generateCodeForCurrentSelection);
		changed: #contents