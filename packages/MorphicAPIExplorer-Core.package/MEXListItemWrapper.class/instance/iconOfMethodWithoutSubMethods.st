accessing
iconOfMethodWithoutSubMethods

	^ self item isActiveDependee 
		ifTrue: [MEXIcons dependeeIcon]
		ifFalse: [
			self item hasDependencies
			ifTrue: [MEXIcons dependentIcon]
			ifFalse: [MEXIcons blankIcon]]