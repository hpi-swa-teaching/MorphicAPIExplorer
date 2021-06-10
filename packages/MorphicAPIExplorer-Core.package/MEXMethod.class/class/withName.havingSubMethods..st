initialize-release
withName: aString havingSubMethods: aCollection

	^ (self withName: aString)
		subMethods: aCollection asOrderedCollection;
		yourself