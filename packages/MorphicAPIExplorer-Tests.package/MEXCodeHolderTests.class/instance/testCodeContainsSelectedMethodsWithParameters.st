tests
testCodeContainsSelectedMethodsWithParameters

	| expectedMethods code |
	expectedMethods := category methodList.
	self selectAllMethods.
	code := codeHolder contents.
	expectedMethods do: [:aMethod |
		self assert: (code includesSubstring: aMethod asString)
	]
	
