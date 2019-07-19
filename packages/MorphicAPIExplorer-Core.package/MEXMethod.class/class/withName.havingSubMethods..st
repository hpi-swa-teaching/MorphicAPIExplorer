initialize-release
withName: aString havingSubMethods: anOrderedCollection

	^ self new
		name: aString;
		subMethods: anOrderedCollection;
		yourself