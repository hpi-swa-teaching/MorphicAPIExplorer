accessing
hasContents

	^ (self item isKindOf: MEXMethod) 
	ifTrue: [self item hasSubMethods]