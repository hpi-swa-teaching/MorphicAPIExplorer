accessing
parameterOf: aString

	^ self parameterAt: (self splitMethodOnParameters indexOf: aString)