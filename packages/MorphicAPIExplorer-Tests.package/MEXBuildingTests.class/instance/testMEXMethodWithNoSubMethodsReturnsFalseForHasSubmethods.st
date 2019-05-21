tests
testMEXMethodWithNoSubMethodsReturnsFalseForHasSubmethods

	methods addAll: {
		MEXMethod withName: '1' havingSubMethods: OrderedCollection new.
		MEXMethod withName: '2'.
		MEXMethod withName: '3'
	}.
	methods do: [:each |
		self assert: each hasSubMethods equals: false]