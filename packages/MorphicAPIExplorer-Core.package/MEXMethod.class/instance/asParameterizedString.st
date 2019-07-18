creation
asParameterizedString

	^ (self splitMethodOnParameters inject: String new into: [:aString :aMessage |
			aString, aMessage, ':', Character space, (self getParameterOf: aMessage), Character space
		]) allButLast