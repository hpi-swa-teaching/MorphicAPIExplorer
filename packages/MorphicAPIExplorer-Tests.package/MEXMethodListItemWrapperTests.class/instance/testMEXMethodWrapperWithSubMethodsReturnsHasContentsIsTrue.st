tests
testMEXMethodWrapperWithSubMethodsReturnsHasContentsIsTrue
	
	self
		fillMethodsIncludingSubMethods;
		collectMEXMethodListItemWrappersFromMethods.
	self assert: methodListItemWrappers first hasContents equals: true. 
	methodListItemWrappers allButFirst do: [:aMEXMethodListItemWrapper |
		self assert: aMEXMethodListItemWrapper hasContents equals: false]