creation
asString
	
	^ self hasParameters
		ifTrue: [self asParameterizedString]
		ifFalse: [self name]