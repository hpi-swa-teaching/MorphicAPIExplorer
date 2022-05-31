accessing
backgroundColor

    ^ ((self item isKindOf: MEXMethod) and: [self item hasSubMethods not])
	ifTrue: [self backgroundOfMethodsWithoutSubmethods]
	ifFalse: [nil]