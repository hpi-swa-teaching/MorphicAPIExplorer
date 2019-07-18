accessing
getParameterOf: aString

	^ self getParameterAt: (self splitMethodOnParameters indexOf: aString)