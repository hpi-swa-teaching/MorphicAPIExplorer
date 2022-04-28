initialize-release
newWithName: aString havingParameters: aCollection

	^ (self newWithName: aString)
		parameters: aCollection asOrderedCollection;
		yourself