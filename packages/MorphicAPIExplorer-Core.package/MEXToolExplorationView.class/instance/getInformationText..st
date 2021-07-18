accessing
getInformationText: aMethod

	^ aMethod hasDependencies ifTrue: [self class helpTextForDependency] ifFalse: [nil]