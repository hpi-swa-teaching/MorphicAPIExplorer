tests
testMEXMethodWrapperWithDependenciesReturnsForGetDependenciesCorrectDependencies
	
	self
		fillMethodsWithDependencies;
		collectMEXListItemWrappersFromMethods.
	self assert: methodListItemWrappers second contents second getDependencies equals: methods second subMethods second dependencies.
	self assert: methodListItemWrappers second contents third getDependencies equals: methods second subMethods third dependencies