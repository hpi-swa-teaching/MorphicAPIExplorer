tests
testEvaluateCodeReturnsCorrectMorph

	| evaluatedCode |
	evaluatedCode := explorationView evaluateCode: self sampleCode.
	self assert: evaluatedCode class equals: Morph.
	self assert: evaluatedCode color equals: Color red