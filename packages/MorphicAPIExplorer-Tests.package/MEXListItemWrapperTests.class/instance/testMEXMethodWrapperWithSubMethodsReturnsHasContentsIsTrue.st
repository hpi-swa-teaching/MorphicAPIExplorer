tests
testMEXMethodWrapperWithSubMethodsReturnsHasContentsIsTrue
	
	self
		fillMethodsIncludingSubMethods;
		collectMEXListItemWrappersFromMethods.
	self assert: methodListItemWrappers first hasContents equals: true. 
	methodListItemWrappers allButFirst do: [:aMEXMethodListItemWrapper |
		self assert: aMEXMethodListItemWrapper hasContents equals: false]