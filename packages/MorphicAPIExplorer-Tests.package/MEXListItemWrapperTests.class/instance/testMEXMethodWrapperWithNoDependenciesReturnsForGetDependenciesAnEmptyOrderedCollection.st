tests
testMEXMethodWrapperWithNoDependenciesReturnsForGetDependenciesAnEmptyOrderedCollection
	
	self
		fillMethodsIncludingSubMethods;
		collectMEXMethodListItemWrappersFromMethods.
	methodListItemWrappers do: [:aMEXMethodListItemWrapper | 
		self assert: aMEXMethodListItemWrapper getDependencies equals: OrderedCollection new]