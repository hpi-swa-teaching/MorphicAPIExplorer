tests
testMEXMethodWrapperWithSubMethodsReturnsHasContentsIsTrue

	methods addAll: {
		MEXMethod withName: '1' havingSubMethods: { MEXMethod withName: 'a' }.
		MEXMethod withName: '2'.
		MEXMethod withName: '3'
	}.
	methodWrappers := methods collect: [:each |
		MEXMethodListItemWrapper withCategory: each havingModel: self havingParent: self.
		].
	
	self assert: methodWrappers first hasContents equals: true. 
	methodWrappers allButFirst do: [:each |
		self assert: each hasContents equals: false]