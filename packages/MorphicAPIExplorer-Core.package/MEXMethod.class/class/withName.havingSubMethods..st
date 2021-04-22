initialize-release
withName: aString havingSubMethods: anOrderedCollection

	^ (self withName: aString)
		subMethods: anOrderedCollection;
		yourself