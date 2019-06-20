tests
testCodeContainsValidCodeLines

	| expectedMethods code instanceName |
	instanceName := mexCodeHolder morphInstanceName.
	expectedMethods := category methodList.
	self selectAllMethods.
	code := mexCodeHolder contents.
	expectedMethods do: [:aMethod |
		self assert: (code includesSubstring: instanceName, Character space, aMethod name, '.', mexCodeHolder lineEnd)
	]