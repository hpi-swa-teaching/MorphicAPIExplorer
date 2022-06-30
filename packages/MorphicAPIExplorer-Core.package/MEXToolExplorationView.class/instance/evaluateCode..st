editor and playground and morphBox
evaluateCode: aCode

	| evaluatedCode |
	evaluatedCode := Compiler new evaluate: aCode in: thisContext to: self.
	self playground pasteUpMorph ifNotNil: [self playground updateContents: evaluatedCode].
	^ evaluatedCode