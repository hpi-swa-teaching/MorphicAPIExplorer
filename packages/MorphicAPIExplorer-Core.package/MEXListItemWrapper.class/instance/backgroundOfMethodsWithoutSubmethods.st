accessing
backgroundOfMethodsWithoutSubmethods    

		^ (self item isActiveInhibitor or: self isInhibited)
					ifTrue: [Color red alpha: 0.5]
					ifFalse: [
						(self item isInhibited)
						ifTrue: [Color transparent]
						ifFalse: [
							(self isInhibited or: self isDependee not) 
							ifTrue: [Color black alpha: 0.3]
							ifFalse: [Color transparent]
							]]