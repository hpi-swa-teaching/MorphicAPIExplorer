editor and playground and morphBox
evaluateCode: aInitilizationCode and: aMethodCode

	| morph |
	morph := Compiler new evaluate: aInitilizationCode. 
	self playground pasteUpMorph ifNotNil: [self playground updateContents: morph].
	Compiler new evaluate: aMethodCode in: thisContext to: self.
	^ morph
	