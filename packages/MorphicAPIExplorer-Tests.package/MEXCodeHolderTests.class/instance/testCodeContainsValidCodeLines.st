tests
testCodeContainsValidCodeLines


	self selectAllMethods.
	self getMethodListOfCategory do: [:aMethod |
		self assert: (self getCode includesSubstring: aMethod asString, '.', Character cr)]