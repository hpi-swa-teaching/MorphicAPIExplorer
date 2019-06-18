accessing
codeHolder: anObject

	codeHolder := anObject.
	codeHolder createMethodsUnwrappedDict.
	
	"this is just for testing if it does anything"
	codeHolder generateCodeFor: self defaultMorph with: {'rotationDegrees:'. 'addMorph:'. 'bounds:'}