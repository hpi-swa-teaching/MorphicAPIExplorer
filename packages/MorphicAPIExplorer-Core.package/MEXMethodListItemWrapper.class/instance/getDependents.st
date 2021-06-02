accessing
getDependents

	^ self item hasDependencies 
		ifTrue: [self item dependencies]
		ifFalse: [#()]