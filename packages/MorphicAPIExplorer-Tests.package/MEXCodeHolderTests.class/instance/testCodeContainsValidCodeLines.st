tests
testCodeContainsValidCodeLines

	| methods code instanceName |
	instanceName := codeHolder morphInstanceName.
	methods := category methodList.
	self selectAllMethods.
	code := codeHolder contents.
	methods do: [:aMethod |
		self assert: (code includesSubstring: instanceName, Character space, aMethod asString, '.', codeHolder lineEnd)
	]