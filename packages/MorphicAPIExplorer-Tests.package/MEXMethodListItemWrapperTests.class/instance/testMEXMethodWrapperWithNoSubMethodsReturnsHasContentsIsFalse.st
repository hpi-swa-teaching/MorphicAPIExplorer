tests
testMEXMethodWrapperWithNoSubMethodsReturnsHasContentsIsFalse

	self fillMethodsWithoutSubMethods.
	methodListItemWrappers do: [:aMEXMethodListItemWrapper |
		self assert: aMEXMethodListItemWrapper hasContents equals: false]