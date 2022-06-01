tests
testMEXMethodWithInhibitorMethodsReturnsTrueForHasInhibitors

	self fillMethodsWithDependenciesandInhibitors.
	self assert: methods second subMethods first hasInhibitors equals: false.
	self assert: methods second subMethods second hasInhibitors equals: false.
	self assert: methods second subMethods third hasInhibitors equals: true