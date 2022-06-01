accessing
getInhibitors    

		(self item isKindOf: MEXMethod)
				ifTrue: [^ self item inhibitors asOrderedCollection]
				ifFalse: [^ OrderedCollection new]