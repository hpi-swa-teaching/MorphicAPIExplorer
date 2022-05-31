accessing
backgroundOfMethodsWithoutSubmethods

	^ self item isActiveInhibitor 
		ifTrue: [Color red]
		ifFalse: [
			self item hasInhibitors
			ifTrue: [Color green]
			ifFalse: [Color transparent]]