accessing
backgroundOfMethodsWithoutSubmethods

^ self item isActiveInhibitor 
		ifTrue: [Color red]
		ifFalse: [
			self item isInhibited
			ifTrue: [Color transparent]
			ifFalse: [
				(self isInhibited or: self isDependee not) 
				ifTrue: [Color darkGray]
				ifFalse: [Color transparent]
				]]