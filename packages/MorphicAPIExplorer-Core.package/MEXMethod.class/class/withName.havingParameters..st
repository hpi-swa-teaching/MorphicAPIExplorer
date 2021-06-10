initialize-release
withName: aString havingParameters: aCollection

	^ (self withName: aString)
		parameters: aCollection asOrderedCollection;
		yourself