accessing
backgroundOfMethodsWithoutSubmethods

	^ self item isActiveInhibitor 
		ifTrue: [Color red]
		ifFalse: [
			self item isInhibited
			ifTrue: [Color transparent]
			ifFalse: [Color transparent]]