accessing
getInformationText: aMEXMethod

	^ aMEXMethod hasDependencies ifTrue: [self class helpTextForDependency] ifFalse: [nil]