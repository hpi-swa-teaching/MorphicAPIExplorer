tests
testMEXMethodWrapperWithNoSubMethodsReturnsHasContentsIsFalse

	methods addAll: {
		MEXMethod withName: '1' havingSubMethods: OrderedCollection new.
		MEXMethod withName: '2'.
		MEXMethod withName: '3'
	}.
	methodWrappers := methods collect: [:each |
		MEXMethodListItemWrapper withCategory: each havingModel: self havingParent: self.
		].
	
	methodWrappers do: [:each |
		self assert: each hasContents equals: false]