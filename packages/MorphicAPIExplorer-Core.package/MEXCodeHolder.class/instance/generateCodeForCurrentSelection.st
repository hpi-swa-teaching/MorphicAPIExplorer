content-generation
generateCodeForCurrentSelection

	^ self selectedMethods inject: String new into: [:aString :aSelectedMethod |
		  aString, self morphInstanceName, Character space, aSelectedMethod asParameterizedString, '.', self lineEnd]