tests
testMEXMethodWrapperWithNoDependenciesReturnsForGetDependenciesAnEmptyOrderedCollection
	
	self
		fillMethodsIncludingSubMethods;
		collectMEXListItemWrappersFromMethods.
	methodListItemWrappers do: [:aMEXMethodListItemWrapper | 
		self assert: aMEXMethodListItemWrapper getDependencies equals: OrderedCollection new]