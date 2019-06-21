creation
asParameterizedString

	| messages |
	self hasParameters
		ifTrue: [
			messages := self name findTokens: #:.
			^ (messages inject: String new into: [:aString :aMessage |
				aString, aMessage, ':', Character space, (self getParameterAt: (messages indexOf: aMessage)), Character space
			]) allButLast
		]
		ifFalse: [^ self name]