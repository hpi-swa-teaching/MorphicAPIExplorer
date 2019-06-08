accessing
codeHolder: anObject

	codeHolder := anObject.
	codeHolder createMethodsUnwrappedDict.
	codeHolder buildCodeFor: self defaultMorph with: 'rotationDegrees:'