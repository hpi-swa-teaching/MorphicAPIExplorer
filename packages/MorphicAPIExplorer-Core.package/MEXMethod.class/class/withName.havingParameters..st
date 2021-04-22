initialize-release
withName: aString havingParameters: anOrderedCollection

	^ (self withName: aString)
		parameters: anOrderedCollection;
		yourself