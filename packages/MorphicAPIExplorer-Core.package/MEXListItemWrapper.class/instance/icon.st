accessing
icon

    ^ ((self item isKindOf: MEXMethod) and: [self item hasSubMethods not])
	ifTrue: [self iconOfMethodWithoutSubMethods]
	ifFalse: [nil]