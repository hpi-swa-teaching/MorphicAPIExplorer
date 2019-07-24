tests
testMEXMethodWithNoSubMethodsReturnsFalseForHasSubmethods

	self fillMethodsWithoutSubMethods.
	methods do: [:aMEXMethod |
		self assert: aMEXMethod hasSubMethods equals: false]