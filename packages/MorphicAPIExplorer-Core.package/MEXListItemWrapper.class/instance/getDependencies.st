accessing
getDependencies

	(self item isKindOf: MEXMethod)
		ifTrue: [^ self item dependencies asOrderedCollection]
		ifFalse: [^ OrderedCollection new]