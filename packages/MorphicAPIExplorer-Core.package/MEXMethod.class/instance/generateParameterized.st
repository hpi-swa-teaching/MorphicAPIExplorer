accessing
generateParameterized

	| messages |
	self hasParameters
		ifTrue: [
			messages := self name findTokens: #:.
			^ (messages inject: String new into: [:aString :aMessage |
				aString, aMessage, ': ', (self parameters at: (messages indexOf: aMessage)), Character space
			]) allButLast
		]
		ifFalse: [^ self name]