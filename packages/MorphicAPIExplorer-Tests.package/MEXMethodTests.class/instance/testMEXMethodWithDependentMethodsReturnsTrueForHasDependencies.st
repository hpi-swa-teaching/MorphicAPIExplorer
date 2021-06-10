tests
testMEXMethodWithDependentMethodsReturnsTrueForHasDependencies

	self fillMethodsWithDependencies.
	self assert: methods second subMethods first hasDependencies equals: false.
	self assert: methods second subMethods second hasDependencies equals: true.
	self assert: methods second subMethods third hasDependencies equals: true