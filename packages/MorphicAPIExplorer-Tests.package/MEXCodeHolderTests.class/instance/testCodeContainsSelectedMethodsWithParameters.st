tests
testCodeContainsSelectedMethodsWithParameters

	| expectedMethods code |
	expectedMethods := category methodList.
	self selectAllMethods.
	code := mexCodeHolder contents.
	expectedMethods do: [:aMethod |
		self assert: (code includesSubstring: aMethod generateParameterized)]
	
