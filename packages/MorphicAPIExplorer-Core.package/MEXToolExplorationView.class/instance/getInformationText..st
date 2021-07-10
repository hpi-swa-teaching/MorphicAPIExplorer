accessing
getInformationText: aMethod

	^ (aMethod hasDependencies) ifTrue: [self textForDependency] "ifFalse: ['']"