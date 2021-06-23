editor and playground and morphBox
evaluateCode: aCode

	| evaluatedCode |
	evaluatedCode := Compiler evaluate: aCode.
	self playground pasteUpMorph ifNotNil: [self playground updatePlaygroundContents: evaluatedCode].
	
	^ evaluatedCode