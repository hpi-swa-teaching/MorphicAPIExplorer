running
checkIfType: aType isIn: aCollection

	aCollection do: [:each | aType == each class ifTrue: [^ true]].
	^ false

	

