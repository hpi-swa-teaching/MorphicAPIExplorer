tests
testEvaluateCodeReturnsCorrectMorph

	| evaluatedCode |
	evaluatedCode := explorationView evaluateCode: self createCode.
	self assert: evaluatedCode class equals: Morph.
	self assert: evaluatedCode color equals: Color red