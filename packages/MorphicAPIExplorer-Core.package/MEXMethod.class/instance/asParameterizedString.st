creation
asParameterizedString

	^ (self splitMethodOnParameters inject: String new into: [:aString :aMessage |
			aString, aMessage, ':', Character space, (self parameterOf: aMessage), Character space
		]) allButLast