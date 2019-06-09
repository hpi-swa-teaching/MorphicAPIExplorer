accessing
codeHolder: anObject

	codeHolder := anObject.
	codeHolder createMethodsUnwrappedDict.
	
	"this is just for testing if it does anything"
	codeHolder buildCodeFor: self defaultMorph with: {'rotationDegrees:'. 'addMorph:'. 'bounds:'}