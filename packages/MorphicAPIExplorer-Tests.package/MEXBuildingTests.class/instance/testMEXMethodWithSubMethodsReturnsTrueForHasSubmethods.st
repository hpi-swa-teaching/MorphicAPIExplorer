tests
testMEXMethodWithSubMethodsReturnsTrueForHasSubmethods

	methods addAll: {
		MEXMethod withName: '1' havingSubMethods: { MEXMethod withName: 'a' }.
		MEXMethod withName: '2'.
		MEXMethod withName: '3'
	}.
	self assert: methods first hasSubMethods equals: true.
	methods allButFirst do: [:each |
		self assert: each hasSubMethods equals: false]