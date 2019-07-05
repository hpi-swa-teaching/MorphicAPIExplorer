editor and playground
evaluateCode: aCode

	self updatePlaygroundContents: (Compiler evaluate: aCode)