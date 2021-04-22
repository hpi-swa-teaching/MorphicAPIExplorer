content-generation
generateCodeForCurrentSelection

	^ self selectedMethods inject: String empty into: [:aString :aSelectedMethod |
		  aString, self morphInstanceName, Character space, aSelectedMethod asString, '.', Character cr]