tests
testMEXMethodFindMethods

	self fillMethodsIncludingSubMethods.
	self assert: (methods first findMethods: {'a'}) first name equals: 'a'.
	self assert: (methods first findMethods: {'x'}) isEmpty