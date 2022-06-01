tests
testCodeContainsValidCodeLines

	| instanceName |
	instanceName := codeHolder morphInstanceName.
	self selectAllMethods.
	self getMethodListOfCategory do: [:aMethod |
		self assert: (self getCode includesSubstring: instanceName, Character space, aMethod asString, '.', Character cr)]