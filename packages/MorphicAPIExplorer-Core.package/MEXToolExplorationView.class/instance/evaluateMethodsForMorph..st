editor and playground and morphBox
evaluateMethodsForMorph: aMorph

	^ Compiler evaluate: 
		('| ', aMorph class name asString asLowercase, ' |', Character cr,
		aMorph class name asString asLowercase , ' := ', aMorph class name, ' new.', Character cr), 
		((self savedMorphs at: aMorph) inject: String empty into: [:aString :aSelectedMethod |
			aString, aMorph class name asString asLowercase, Character space, aSelectedMethod asString, '.', Character cr])