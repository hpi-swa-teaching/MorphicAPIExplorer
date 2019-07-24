tests
testMEXMethodWithSubMethodsReturnsTrueForHasSubmethods

	self fillMethodsIncludingSubMethods.
	self assert: methods first hasSubMethods equals: true.
	methods allButFirst do: [:aMEXMethod |
		self assert: aMEXMethod hasSubMethods equals: false]